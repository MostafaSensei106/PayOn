
# Comprehensive Registration & Wallet Flow Implementation Guide

This document provides a highly detailed, step-by-step implementation guide for the Registration and Wallet Creation flows. 

**🔴 ARCHITECTURE STRICT RULE (MUST FOLLOW):** The "Document Upload" process and the "Wallet Creation" process are **COMPLETELY SEPARATED** by an asynchronous Admin Approval step. 
* They MUST NOT be placed in the same linear UI flow. 
* After successful Document Upload, the user MUST be redirected to a Dashboard showing a "Pending Review" state. 
* The Wallet Creation screen is a totally separate route/component that is only accessible when the backend returns an "Approved" state for that specific account.

---

## 🏗️ Global Implementation Notes for the AI
* **State Management:** Keep track of `AccountType`, `AuthToken`, and `AccountID` across the registration flow.
* **Error Handling:** Every API call must have a `try/catch` block, showing a toast/snackbar for network errors or invalid inputs.
* **Loading States:** Every button triggering an API must have a disabled/loading state (spinner) to prevent double submissions.

---

## 🚀 PHASE 1: First-Time Registration Journey

### 📱 Screen 1: Account Type Selection (اختيار نوع الحساب)
* **Route:** `/register/account-type`
* **API Call:** `GET /api/AccountTypes`
* **UI/UX:** * Show a skeleton loader while fetching account types.
  * Render the account types as clickable cards.
* **Action:** When a user clicks a card, save the `AccountTypeId` and `AccountTypeName` to the global state/store, then navigate to Screen 2.

### 📱 Screen 2: Registration Data (بيانات التسجيل)
* **Route:** `/register/details`
* **Prerequisite API Calls (on mount):**
  * `GET /api/Countries` -> Populates `nationalityCode` and `country` dropdowns.
  * `GET /api/Cities?countryId={id}` -> Triggered when a country is selected.

#### Step 2A: The `Register` API Call
* **Endpoint:** `POST /api/Auth/Register`
* **Form Validations Required:**
  * `email`: Valid email regex.
  * `phoneNumber`: Numeric, check length based on country code.
  * `password`: Minimum 8 characters, at least 1 uppercase, 1 number.
  * `birthDate`: Must be a valid past date (user must be >= 18 years old).
* **Payload Structure:**
  ```json
  {
    "email": "user@example.com",
    "phoneNumber": "+201000000000",
    "name": "Full Name",
    "birthDate": "1990-01-01",
    "gender": "M", // "M" or "F"
    "password": "SecurePassword123",
    "isPhone": true,
    "referralCode": "REF123", // Optional, omit if empty
    "nationalityCode": "EG",
    "country": "EG",
    "cityId": "city-uuid"
  }

```

* **Post-Action:** On success, extract the `Token` from the response and set it in the App's Auth Provider (Headers: `Authorization: Bearer <token>`).

#### Step 2B: The `Create Account` API Call

* **Endpoint:** `POST /api/Account/Create`
* **Logic & Conditional Payload:**
* **IF `AccountTypeName` == "Personal Type":**
* Exclude location data.
* Payload MUST NOT contain `latitude` or `longitude`.


* **IF `AccountTypeName` != "Personal Type" (Any other type):**
* Fetch user's geolocation (prompt permissions).
* Include `latitude` and `longitude` in the payload.




* **Post-Action:** Navigate to Screen 3.

### 📱 Screen 3: Identity Verification (OTP)

* **Route:** `/register/verify-otp`
* **Step 1: Send OTP:** Call `POST /api/Auth/SendOTP` (indicate if via SMS or Email based on user choice).
* **UI/UX:**
* Start a 60-second countdown timer. Disable the "Resend" button until it hits 0.
* Mask the phone/email in the instruction text (e.g., "Sent to +2010****000").


* **Step 2: Verify OTP:** Call `POST /api/Auth/VerifyOTP` with the 4-6 digit code.
* **Post-Action:** On success, navigate to Screen 4.

### 📱 Screen 4: Documents Upload (رفع الملفات)

* **Route:** `/register/upload-documents`
* **Step 1: Get Requirements:** Call `GET /api/Documents/Required?accountTypeId={id}` to dynamically render the upload fields (e.g., ID Front, ID Back, Passport).
* **Step 2: Upload Files:** * Allow image/PDF selection.
* Validate file size client-side (e.g., < 5MB).
* Send via `multipart/form-data` to `POST /api/Documents/Upload`.


* **🛑 CRITICAL NAVIGATION HOOK (END OF PHASE 1):**
* Do **NOT** redirect to "Create Wallet".
* **Action:** Redirect the user to `/dashboard`.
* **UI Update:** The Dashboard must fetch the user's data and display a Wallet Card with the status: **"قيد المراجعة" (Under Review / Pending Admin Approval)**. All wallet interactions must be disabled at this point.



---

## ⏸️ THE WAITING STATE (Admin Approval)

* The app polls or refreshes data via `GET /api/Wallets` on app load.
* When the Admin approves the documents, the Wallet object in the response changes its state from `Pending` to `Approved`.
* However, the wallet does NOT have an `IPA` or `Currency` yet.
* **UI Trigger:** Display a clear banner or empty state in the wallet card: *"تم تفعيل محفظتك، اكمل بياناتك لإنشاء المحفظة"* (Your account is approved, complete your data to setup your wallet). Clicking this routes to Phase 2.

---

## 🟢 PHASE 2: Wallet Setup Flow (إعداد المحفظة للمرة الأولى)

### 📱 Screen 5: Create Wallet Details (إنشاء المحفظة)

* **Route:** `/wallet/setup` (Completely separate from the registration route).
* **API Call (on mount):** `GET /api/Currencies` to populate the currency dropdown.
* **Form Fields:**
* `IPA`: Input field (validate alphanumeric, check availability if required).
* `Currency`: Dropdown from the GET API.


* **Submit Action:** Call `POST /api/Wallet/Create`.

### 📱 Screen 6: Wallet PIN Setup (تأكيد الحماية)

* **Route:** `/wallet/pin-setup`
* **UI/UX:** A standard 4 or 6-digit PIN pad layout. User enters PIN, then confirms it (enters again).
* **Submit Action:** * Hash the PIN client-side (if required by backend specs, otherwise send over HTTPS).
* Call `POST /api/Wallet/CreatePIN` with payload:
```json
{
  "accountId": "extracted-from-global-state",
  "pinHash": "hashed-or-plain-pin"
}

```




* **Post-Action:** Show a massive "Success/Celebration" Lottie animation. Redirect back to `/dashboard`. The wallet is now fully active, showing balance and actions.

---

## ➕ PHASE 3: Adding a Second Wallet (إضافة محفظة ثانية)

* **Trigger:** User clicks "+ أضف محفظة أخرى" (Add another wallet) from the Dashboard.
* **Logic:** This is essentially a loop of Phase 1 (starting from Screen 2B) and Phase 2, adhering to the same exact strict separation.

### 📱 Screen A: New Account & Uploads

* **Route:** `/dashboard/add-wallet`
* **Action 1:** Fill data and call `POST /api/Account/Create` (same endpoint, new payload).
* **Action 2:** Call `GET /api/Documents/Required` and `POST /api/Documents/Upload` for this specific new account.
* **🛑 CRITICAL NAVIGATION HOOK:**
* Stop the flow. Redirect to `/dashboard`.
* The dashboard now shows the First Wallet (Active) and a Second Wallet card showing **"قيد المراجعة" (Under Review)**.



### 📱 Screen B: Setup Second Wallet (Post-Approval)

* Once the Admin approves the second account, the user clicks the prompt on the second wallet card.
* They are routed to `/wallet/setup`.
* They execute **Screen 5** (Select IPA & Currency) and **Screen 6** (Create PIN).
* Both wallets are now fully active on the Dashboard.

```

```