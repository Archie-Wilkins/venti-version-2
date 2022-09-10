import 'dart:convert';

import 'package:Venti/Repositories/EventsRespository.dart';
import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:http/http.dart' as http;

import '../Entities/Event.dart';

class EventService {
  final SecurePreferencesService _storageService = SecurePreferencesService();
  final EventsRespository _eventsRespository = EventsRespository();

  Future<http.Response> createNewEvent(Event newEventModel) async {
    var token = await _storageService.readSecureData("authToken");

    List<String> attendeeNames = [];
    for (var attendee in newEventModel.attendees) {
      attendeeNames.add(attendee.name);
    }

    var jsonBody = Map<String, dynamic?>();
    jsonBody["title"] = newEventModel.title;
    jsonBody["location"] = newEventModel.location;
    jsonBody["description"] = newEventModel.description;
    jsonBody["startDateTime"] = newEventModel.startDateTime;
    jsonBody["endDateTime"] = newEventModel.endDateTime;
    jsonBody["attendees"] = attendeeNames;
    jsonBody["type"] = "invite";

    final response = await http.post(
      Uri.parse('http://' + '46.101.35.249:8080' + '/api/event'),
      headers: {
        'Authorization': 'Bearer $token',
        "content-type": "application/json",
        "accept": "application/json",
      },
      body: jsonEncode(jsonBody),
    );
    return response;
  }

  Future<http.Response> getUsersEventsAPICall() async {
    var token = await _storageService.readSecureData("authToken");
    final response = await http.get(
        Uri.parse('http://' + '46.101.35.249:8080' + '/api/event'),
        headers: {
          'Authorization': 'Bearer $token',
          "content-type": "application/json",
          "accept": "application/json",
        });

    return response;
  }

  updateUserEvents() async {
    var response = await getUsersEventsAPICall();
    if (response.statusCode == 200) {
      var eventListBody = jsonDecode(response.body);

      var eventList = eventListBody["_embedded"]["eventList"];
      print(eventList);
      print("Adding");

      await _eventsRespository.addEvents(eventList);

      print("Added");

      print("=========================");
      print("Database");
      print(_eventsRespository.events);
      print("=========================");

      return "Success";
    } else {
      return "Error";
    }
  }

  getAllEvents() async {
    return await _eventsRespository.events;
  }
}
