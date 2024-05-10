import 'package:mobile_skinguru/Model/appointment.dart';
import 'package:mobile_skinguru/Model/history.dart';
import 'package:mobile_skinguru/Model/transaction.dart';

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
      imageUrl: "assest/images/profilepx.png"),
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
      imageUrl: "assest/images/profilepx.png")
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
      imageUrl: "assest/images/person.jpg",
      message: "is that you",
      nochat: 3),
  HistoryModel(
      name: "Dr. John",
      date: DateTime.now(),
      imageUrl: "assest/images/profilepx.png",
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
      imageUrl: "assest/images/profilepx.png",
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

var dummyTransaction = [
  TransactionModel(
      type: Type.credit,
      reason: "Top up",
      amount: 200000,
      date: DateTime.now(),
      user: "Skin Care"),
  TransactionModel(
      type: Type.debit,
      reason: "Consultation ",
      amount: 100000,
      date: DateTime.now(),
      user: "Dr. Usman Aliyu"),
  TransactionModel(
      type: Type.credit,
      reason: "Wallet Top up",
      amount: 2500000,
      date: DateTime.now(),
      user: "Top up"),
  TransactionModel(
      type: Type.credit,
      reason: "Wallet Top up",
      amount: 2500000,
      date: DateTime.now(),
      user: "Top up"),
  TransactionModel(
      type: Type.debit,
      reason: "Skin Care",
      amount: 2500000,
      date: DateTime.now(),
      user: "Pyramind Phamacy"),
];
