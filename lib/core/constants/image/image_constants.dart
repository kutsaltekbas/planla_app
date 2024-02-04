class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();
  String get splashLogo => toPng("splash");

  String toPng(String name) => 'assets/images/$name.png';
}
