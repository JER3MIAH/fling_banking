const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';


final String splashBg = 'splash-bg'.png;
final String flingTextLogo = 'flingTextLogo'.svg;


// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
