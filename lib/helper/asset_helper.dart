class AssetHelper {
  static final AssetHelper _singleton = AssetHelper._internal();

  factory AssetHelper() {
    return _singleton;
  }

  AssetHelper._internal();


  static const String splashImage="assets/nayeem.jpg";



}
