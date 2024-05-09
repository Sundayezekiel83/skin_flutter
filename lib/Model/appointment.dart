enum Status { pending, declined, completed, accepted }

enum Consultation { general, regular }

class Appointment {
  const Appointment(
      {required this.name,
      required this.status,
      required this.date,
      required this.consultation,
      required this.imageUrl});

  final String name;
  final Status status;
  final DateTime date;
  final String imageUrl;
  final Consultation consultation;
}
