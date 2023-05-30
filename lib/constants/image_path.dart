AppAssetPaths? get imagePath => AppAssetPaths.instance;

class AppAssetPaths {
  static AppAssetPaths? _instance;
  static AppAssetPaths? get instance {
    _instance ??= AppAssetPaths._init();
    return _instance;
  }

  AppAssetPaths._init();

  final String partyPng = "assets/images/party.png";
  final String crownPng = "assets/images/crown.png";
}
