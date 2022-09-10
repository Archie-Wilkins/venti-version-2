import 'package:isar/isar.dart';

import '../Entities/Event.dart';

class EventsRespository {
  EventsRespository() {
    init();
  }

  List<Event> _events = [];

  List<Event> get events => _events;

  Isar? isar;

  void init() async {
    isar ??=
        await Isar.open(schemas: [EventSchema], directory: 'database/event');

    await isar!.txn((isar) async {
      final eventsCollection = isar.events;
      _events = await eventsCollection.where().findAll();
    });
  }

  void addEvent(Event event) async {
    await isar?.writeTxn((isar) async {
      print("Isar");
      print(isar);
      await isar.events.put(event);
    });
    _events.add(event);
    print("===== Isar ====");
    print(_events);
    print("Saved");
  }

  Future<bool> addEvents(var eventList) async {
    print("Reached");
    await isar!.writeTxn((isar) async {
      print("Event List");
      print(eventList);
      for (var eventData in eventList) {
        Event event = Event(
            eventData["id"],
            eventData["title"],
            eventData["description"],
            eventData["location"],
            eventData["startDateTime"],
            eventData["endDateTime"],
            eventData["_links"]["self"]["href"],
            eventData["attendeeCount"],
            eventData["attendeeAttendingCount"],
            eventData["attendeeNotAttendingCount"],
            eventData["attendeeNotRespondedCount"]);
        await isar.events.put(event);
      }
    });
    print("Saved");
    return true;
  }
//
//   void deleteTodo(Todo todo) async {
//     await isar!.writeTxn((isar) async {
//       bool deleted = await isar.todos.delete(todo.id);
//       if (deleted) _todos.remove(todo);
//       notifyListeners();
//     });
//   }
//
//   void toggleImp(int id) async {
//     await isar!.writeTxn((isar) async {
//       Todo? todo = await isar.todos.get(id);
//       todo!.isImportant = !todo.isImportant;
//       await isar.todos.put(todo);
//       int todoIndex = todos.indexWhere((todo) => todo.id == id);
//       todos[todoIndex].isImportant = todo.isImportant;
//       notifyListeners();
//     });
//   }
}
