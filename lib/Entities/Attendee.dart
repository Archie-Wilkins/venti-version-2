import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'Attendee.g.dart';

@Collection()
class Attendee {
  @required
  int id;

  @required
  String name;

  @required
  String statusId;

  String message;

  Attendee(this.id, this.name, this.statusId, this.message);

  @override
  String toString() {
    return 'Attendee{id: $id, name: $name, statusId: $statusId, message: $message}';
  }
}
