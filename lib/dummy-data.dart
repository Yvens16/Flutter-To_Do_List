import 'package:flutter/cupertino.dart';

import './models/note.dart';
import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: NoteCategory.Personnal,
    title: 'Personnal',
    color: [Color(0xff4facfe), Color(0xff00f2fe)],
  ),
  Category(
    id: NoteCategory.Work,
    title: 'Work',
    color: [Color(0xff00cdac), Color(0xff8ddad5)],
  ),
  Category(
    id: NoteCategory.Shopping,
    title: 'Shopping',
    color: [Color(0xffffafbd), Color(0xffffc3a0)],
  ),
  Category(
    id: NoteCategory.Movies,
    title: 'Movies',
    color: [Color(0xffeca1fe), Color(0xff5271c4)],
  ),
];

const DUMMY_NOTES = const [
  Note(
    title: 'Liste de course',
    address: null,
    startDate: null,
    endDate: null,
    notes: 'Pâtes, lait, céréales, shampoing',
    priority: Priority.Secondary,
    isAlarmSet: false,
  ),
  Note(
    title: 'New job\'s meeting',
    address: '235 harbort street',
    startDate: null,
    endDate: null,
    notes: null,
    priority: Priority.Important,
    isAlarmSet: true,
  ),
  Note(
    title: 'Make appointment with Marie',
    address: null,
    startDate: null,
    endDate: null,
    notes: '',
    priority: Priority.Medium,
    isAlarmSet: false,
  ),
];
