class HistoryModel {
  const HistoryModel(
      {required this.name,
      required this.date,
      required this.imageUrl,
      required this.message,
      required this.nochat});

  final String name;
  final DateTime date;
  final String imageUrl;
  final String message;
  final int nochat;
}
