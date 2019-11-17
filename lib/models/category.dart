import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum NoteCategory {
  Work,
  Personnal,
  Shopping,
  Movies,
}

class Category {
  final NoteCategory id;
  final title;
  final List color;

  const Category ({
    @required this.id,
    @required this.title,
    @required this.color,
  });
}