const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';

//? Bottom nav bar icons
final String dashboard = 'dashboard'.svg;
final String investment = 'investment'.svg;
final String learn = 'learn'.svg;
final String profile = 'profile'.svg;
final String services = 'services'.svg;
//?----------------------------------------------

final String profileImage = 'profile-image'.png;
final String contactServices = 'contact-services'.svg;
final String active = 'active'.svg;
final String greenNaira = 'greenNaira'.svg;
final String showing = 'showing'.svg;
final String hidden = 'hidden'.svg;
final String cardIcon = 'cardIcon'.svg;
final String transferIcon = 'transferIcon'.svg;
final String payBillsIcon = 'payBillsIcon'.svg;
final String airtimeIcon = 'airtimeIcon'.svg;
final String moneyIn = 'moneyIn'.svg;
final String moneyOut = 'moneyOut'.svg;
final String income = 'income'.svg;
final String expense = 'expense'.svg;

//?Service screen icons
final String billPayment = 'billPayment'.svg;
final String airtime = 'airtime'.svg;
final String transfer = 'transfer'.svg;
final String cards = 'cards'.svg;
final String transactionHistory = 'transactionHistory'.svg;
final String limitTransfers = 'limitTransfers'.svg;
final String loan = 'loan'.svg;
final String invest = 'invest'.svg;
final String analytics = 'analytics'.svg;
final String toolsIcon = 'toolsIcon'.svg;
//?-------------------------------------------------

//?
final String quickLearn = 'quickLearn'.svg;
final String notificationBell = 'notificationBell'.svg;
final String changePassword = 'changePassword'.svg;
final String createPin = 'createPin'.svg;
final String limitManagement = 'limitManagement'.svg;
final String bioLogin = 'bioLogin'.svg;
final String logoutIcon = 'logoutIcon'.svg;
final String onlineSupport = 'onlineSupport'.svg;
final String notifOutline = 'notifOutline'.svg;
//?-------------------------------------------------

final String card = 'card'.svg;
final String netflix = 'netflix'.svg;
final String udemy = 'udemy'.svg;
final String paypal = 'paypal'.svg;
final String successIcon = 'success-icon'.svg;
final String downloadIcon = 'download-icon'.svg;

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
