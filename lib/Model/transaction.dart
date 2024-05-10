enum Type { debit, credit }

class TransactionModel {
  TransactionModel(
      {required this.type,
      required this.reason,
      required this.amount,
      required this.date,
      required this.user});

  final Type type;
  final int amount;
  final DateTime date;
  final String user;
  final String reason;
}
