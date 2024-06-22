const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';


final String splashBg = 'splash-bg'.png;
final String flingTextLogo = 'flingTextLogo'.svg;
final String firstOnbImage = 'firstOnbImage'.svg;
final String secondOnbImage = 'secondOnbImage'.svg;
final String thirdOnbImage = 'thirdOnbImage'.svg;
final String arrowProgress1 = 'arrowProgress1'.svg;
final String arrowProgress2 = 'arrowProgress2'.svg;


// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
