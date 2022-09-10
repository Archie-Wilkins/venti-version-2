import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'Attendee.dart';

part 'Event.g.dart';

@Collection()
class Event {
  @required
  int id;

  @override
  String toString() {
    return 'Event{id: $id, title: $title, description: $description, location: $location, startDateTime: $startDateTime, endDateTime: $endDateTime, linkToEvent: $linkToEvent, attendeeCount: $attendeeCount, attendeeAttendingCount: $attendeeAttendingCount, attendeeNotAttendingCount: $attendeeNotAttendingCount, attendeeNotRespondedCount: $attendeeNotRespondedCount, attendees: $attendees}';
  }

  @required
  String title;

  String? description;

  @required
  String location;

  @required
  String startDateTime;

  String? endDateTime;

  @required
  String linkToEvent;

  @required
  int attendeeCount;

  @required
  int attendeeAttendingCount;

  @required
  int attendeeNotAttendingCount;

  @required
  int attendeeNotRespondedCount;

  final attendees = IsarLinks<Attendee>();

  Event(
    this.id,
    this.title,
    this.description,
    this.location,
    this.startDateTime,
    this.endDateTime,
    this.linkToEvent,
    this.attendeeCount,
    this.attendeeAttendingCount,
    this.attendeeNotAttendingCount,
    this.attendeeNotRespondedCount,
  );
}
