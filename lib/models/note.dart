import 'package:flutter/foundation.dart';

enum Priority {
  Important,
  Medium,
  Secondary,
}

class Note {
  final String title;
  final String address;
  final String startDate;
  final String endDate;
  final String notes;
  final Priority priority;
  final bool isAlarmSet;

  const Note({
    @required this.title,
    @required this.address,
    @required this.startDate,
    @required this.endDate,
    @required this.notes,
    @required this.priority,
    this.isAlarmSet,
  });
}
