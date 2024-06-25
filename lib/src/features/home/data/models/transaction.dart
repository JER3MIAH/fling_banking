class Transaction {
  final String description;
  final String date;
  final String time;
  final int amount;
  final bool isIncome;

  Transaction({
    required this.description,
    required this.date,
    required this.time,
    required this.amount,
    required this.isIncome,
  });
}
