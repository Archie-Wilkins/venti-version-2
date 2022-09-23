import 'package:flutter/material.dart';

class NewUser {
  String firstName;

  String lastName;

  String emailAddress;

  String phoneNumber;

  String password;

  NewUser(this.firstName, this.lastName, this.emailAddress, this.phoneNumber,
      this.password);

  @override
  String toString() {
    return 'NewUser{firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password}';
  }
}
