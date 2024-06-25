import 'package:fling_banking/src/features/home/data/data.dart';
import 'package:fling_banking/src/shared/shared.dart';

List<DashboardAction> dbActions = [
  DashboardAction(title: 'Card', icon: cardIcon),
  DashboardAction(title: 'Transfer', icon: transferIcon),
  DashboardAction(title: 'Pay Bills', icon: payBillsIcon),
  DashboardAction(title: 'Airtime', icon: airtimeIcon),
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
