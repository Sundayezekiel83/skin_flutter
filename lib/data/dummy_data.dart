import 'package:mobile_skinguru/Model/appointment.dart';
import 'package:mobile_skinguru/Model/history.dart';

var dummyAppointment = [
  Appointment(
      name: "Sunday Ezekiel",
      status: Status.accepted,
      date: DateTime.now(),
      consultation: Consultation.general,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Victoria",
      status: Status.pending,
      date: DateTime.now(),
      consultation: Consultation.regular,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Emmanuel",
      status: Status.completed,
      date: DateTime.now(),
      consultation: Consultation.regular,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Janet John",
      status: Status.declined,
      date: DateTime.now(),
      consultation: Consultation.regular,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Janet John",
      status: Status.declined,
      date: DateTime.now(),
      consultation: Consultation.regular,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Janet John",
      status: Status.declined,
      date: DateTime.now(),
      consultation: Consultation.regular,
      imageUrl: "assest/images/appoint.png"),
  Appointment(
      name: "Jeremiah Ade",
      status: Status.pending,
      date: DateTime.now(),
      consultation: Consultation.general,
      imageUrl: "assest/images/appoint.png")
];

var dummyHistory = [
  HistoryModel(
      name: "Dr. Elizabeth",
      date: DateTime.now(),
      imageUrl: "assest/images/appoint.png",
      message: "How are you",
      nochat: 2),
  HistoryModel(
      name: "Dr. Morrin",
      date: DateTime.now(),
      imageUrl: "assest/images/person.png",
      message: "is that you",
      nochat: 3),
  HistoryModel(
      name: "Dr. John",
      date: DateTime.now(),
      imageUrl: "assest/images/appoint.png",
      message: "What are you doing",
      nochat: 4),
  HistoryModel(
      name: "Dr. oluwaseun",
      date: DateTime.now(),
      imageUrl: "assest/images/appoint.png",
      message: "Welecome back!",
      nochat: 3),
  HistoryModel(
      name: "Dr. Tswanya",
      date: DateTime.now(),
      imageUrl: "assest/images/person.jpg",
      message: "Welecome back!",
      nochat: 3),
  HistoryModel(
      name: "Dr. Joseph",
      date: DateTime.now(),
      imageUrl: "assest/images/appoint.png",
      message: "Welecome back!",
      nochat: 9),
  HistoryModel(
      name: "Dr. Vicky",
      date: DateTime.now(),
      imageUrl: "assest/images/persons.jpg",
      message: "how much is my drug",
      nochat: 3)
];
