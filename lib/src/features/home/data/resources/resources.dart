import 'package:fling_banking/src/features/home/data/data.dart';
import 'package:fling_banking/src/features/home/data/models/biller.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';

List<DashboardAction> dbActions = [
  DashboardAction(
    title: 'Card',
    icon: cardIcon,
    onTap: () {
      AppNavigator.pushNamed(HomeRoutes.cards);
    },
  ),
  DashboardAction(
    title: 'Transfer',
    icon: transferIcon,
    onTap: () {
      AppNavigator.pushNamed(HomeRoutes.transfer);
    },
  ),
  DashboardAction(
    title: 'Pay Bills',
    icon: payBillsIcon,
    onTap: () {
      AppNavigator.pushNamed(HomeRoutes.billPayment);
    },
  ),
  DashboardAction(
    title: 'Airtime',
    icon: airtimeIcon,
    onTap: () {
      AppNavigator.pushNamed(HomeRoutes.airtime);
    },
  ),
];

List<Transaction> transactions = [
  Transaction(
    description: 'ONB TRF TO BLESSING J**8...',
    date: '03.11.23',
    time: '16:45',
    amount: 8500,
    isIncome: true,
  ),
  Transaction(
    description: 'Surpise present',
    date: '01.11.23',
    time: '09:00',
    amount: 50000,
    isIncome: true,
  ),
  Transaction(
    description: 'Grocery Shopping',
    date: '02.11.23',
    time: '18:30',
    amount: 3200,
    isIncome: false,
  ),
  Transaction(
    description: 'Project Payment',
    date: '06.11.23',
    time: '14:45',
    amount: 10000,
    isIncome: true,
  ),
  Transaction(
    description: 'Electricity Bill Payment',
    date: '04.11.23',
    time: '10:15',
    amount: 4500,
    isIncome: false,
  ),
  Transaction(
    description: 'Dinner at Restaurant',
    date: '05.11.23',
    time: '20:00',
    amount: 1500,
    isIncome: false,
  ),
];

List<Biller> billerList = [
  Biller(title: 'MTN', logo: mtn),
  Biller(title: 'Glo', logo: glo),
  Biller(title: 'Airtel', logo: airtel),
  Biller(title: '9mobile', logo: mobile9),
];
