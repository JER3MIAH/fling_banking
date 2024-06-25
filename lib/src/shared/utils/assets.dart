const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';

final String dashboard = 'dashboard'.svg;
final String investment = 'investment'.svg;
final String learn = 'learn'.svg;
final String profile = 'profile'.svg;
final String services = 'services'.svg;

final String splashBg = 'splash-bg'.png;
final String flingTextLogo = 'flingTextLogo'.svg;
final String firstOnbImage = 'firstOnbImage'.svg;
final String secondOnbImage = 'secondOnbImage'.svg;
final String thirdOnbImage = 'thirdOnbImage'.svg;
final String arrowProgress1 = 'arrowProgress1'.svg;
final String arrowProgress2 = 'arrowProgress2'.svg;
final String fingerprintIcon = 'fingerprintIcon'.svg;
final String uploadCloud = 'uploadCloud'.svg;
final String cameraIcon = 'cameraIcon'.svg;
final String calendarIcon = 'calendarIcon'.svg;


// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
