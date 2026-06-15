
# 🚀 STRICT IMPLEMENTATION BLUEPRINT: Request Money Flow (Receiver & Sender)

**CRITICAL INSTRUCTION FOR CLAUDE:** You are implementing a highly sensitive financial flow. Read EVERY step carefully. **Do not hallucinate default behaviors.** The flow diverges significantly based on user actions (Accept vs. Reject). The previous implementation contained a critical logical bug where Rejections triggered validations (PIN/OTP). **THIS MUST STOP NOW.** Follow the exact conditional branching below.

---

## 🏛️ GLOBAL STATE & UI MANAGEMENT RULES
1. **Loading States:** Every API call must toggle an `isLoading` state. Buttons must be disabled while `isLoading === true`.
2. **Error Handling:** Wrap all API calls in `try/catch`. On error (e.g., HTTP 400/500, invalid PIN), show a localized Toast/Snackbar. DO NOT crash the app. DO NOT proceed to the next step.
3. **Draft ID Scope:** The `draftIds` returned from Draft creation are essential and must be persisted in the component's state to be used in subsequent calls.

---

## 📥 PART 1: RECEIVER FLOW (The User Requesting Money)

**Context:** User A (Receiver/Current User) wants to request money from User B (Sender/Target).
**Prerequisite:** The app has already executed a `Check Wallet` API and has User B's `walletId` (which acts as the `senderId` in this context).

### Step 1.1: Create Transaction Draft
* **Trigger:** User confirms the amount they want to request.
* **Endpoint:** `POST /api/Transaction/CreateTransactionDraft`
* **STRICT Payload Structure:**
  ```json
  {
    "transactionTypeId": 17, // STRICTLY 17 (Represents Request Money)
    "senderId": "<target_user_wallet_id>", // The person who will pay
    "receiverId": "<current_user_wallet_id>", // My wallet ID
    // 🚫 CRITICAL: DO NOT INCLUDE "paymentId" IN THIS PAYLOAD UNDER ANY CIRCUMSTANCE.
  }

```

* **Success State Handling:** * Extract `draftIds` (array of strings/GUIDs) from the response.
* Save `draftIds` to the component's state (`setDraftIds(...)`).
* Automatically proceed to Step 1.2.



### Step 1.2: Check Wallet PIN (Authorization)

* **Trigger:** Programmatically triggered right after Step 1.1 success, prompting the user for their PIN.
* **Endpoint:** `POST /api/Wallet/CheckWalletPin`
* **STRICT Payload Structure:**
```json
{
  "draftIds": ["<draft_id_from_step_1.1>"],
  "senderId": "<target_user_wallet_id>", // Same as Step 1.1
  "accountId": "<current_user_wallet_id>", // My wallet ID
  "pinHash": "<hashed_user_input_pin>",
  "transactionTypeId": 17 // STRICTLY 17
}

```


* **Success State Handling:**
* Render the Success Card: "✅ تم إرسال الطلب بنجاح" (Request sent successfully).
* Close the flow / Navigate back to Dashboard.



---

## 📤 PART 2: SENDER FLOW (The User Asked to Pay)

**Context:** User B (Current User) opens the app and sees pending requests they need to respond to.

### Step 2.1: Fetch Pending Transactions (FIRST ENDPOINT)

* **Trigger:** Screen Mount (`useEffect` / `initState`).
* **Endpoint:** `GET /api/Transaction/GetPendingTransactions`
* **UI Render Requirement:** * Map over the response array.
* Render a List/Card for each request.
* **EACH CARD MUST HAVE TWO DISTINCT BUTTONS:** 1. Primary Button: `[Accept & Pay]` (موافق ودفع)
2. Secondary/Destructive Button: `[Reject]` (رفض)



---

### 🟢 BRANCH A: User Clicks "Accept & Pay" (The Happy Path)

*This branch requires full security validation (PIN + OTP).*

#### Step A.1: Validate PIN

* **Trigger:** User clicks `[Accept & Pay]`.
* **Action:** Open PIN Pad bottom sheet/modal.
* **Endpoint:** `POST /api/Wallet/CheckWalletPin`
* **Payload:**
```json
{
  "accountId": "<current_user_wallet_id>",
  "pinHash": "<hashed_user_input_pin>"
}

```



#### Step A.2: Verify OTP

* **Trigger:** On successful PIN validation (Step A.1 returning 200 OK).
* **Action:** Trigger the OTP logic (Send OTP -> Show OTP Input -> Verify OTP).
* *Halt execution here until OTP is explicitly verified.*

#### Step A.3: Execute Transaction (LAST ENDPOINT)

* **Trigger:** On successful OTP verification.
* **Endpoint:** `POST /api/Transaction/SaveTransaction`
* **Payload:** * ⚠️ Pass the **ENTIRE RAW DATA OBJECT** of that specific transaction exactly as it was received from `GetPendingTransactions` in Step 2.1.
* **Success UI:** Show Green Note: "✅ تم تأكيد الدفع وإرسال الفلوس". Remove card from list.

---

### 🔴 BRANCH B: User Clicks "Reject" (🚨 THE BUG FIX - STRICT REJECTION RULE)

**CRITICAL DIRECTIVE:** If the user clicks `[Reject]`, you MUST completely bypass PIN validation and OTP verification.
**DO NOT ask for a PIN. DO NOT ask for OTP.** * **STRICT ENDPOINT CONSTRAINT:** For the entire Rejection flow, you are strictly allowed to use ONLY the **First Endpoint** (`GET /api/Transaction/GetPendingTransactions`) and the **Last Endpoint** (`POST /api/Transaction/SaveTransaction`).

#### Step B.1: Confirm Rejection (UI Only)

* **Trigger:** User clicks `[Reject]`.
* **Action:** Show an alert dialog: "هل أنت متأكد من رفض الطلب؟" (Are you sure you want to reject?).

#### Step B.2: Direct Execution via Last Endpoint

* **Trigger:** User confirms Rejection in the alert dialog.
* **Action:** Skip all authorization screens. Immediately trigger the **Last Endpoint** using the data from the **First Endpoint**.
* **Endpoint:** `POST /api/Transaction/SaveTransaction`
* **Payload:** Pass the transaction data object retrieved from `GetPendingTransactions` (Step 2.1), mapping/modifying the status or properties to reflect the "Rejected" action as required by the backend schema.
* **Success UI:** * Remove the specific request card from the local state list immediately.
* Show a Toast: "تم رفض الطلب" (Request Rejected).

