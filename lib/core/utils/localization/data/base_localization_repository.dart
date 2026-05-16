abstract class BaseLocalizationRepository {
  Future<void> cacheLanguageCode(String langCode);
  String getLanguageCode();
}
