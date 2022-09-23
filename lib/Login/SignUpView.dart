import 'dart:convert';

import 'package:Venti/DTOs/NewUser.dart';
import 'package:Venti/DTOs/SecureStorage.dart';
import 'package:Venti/Home/HomeView.dart';
import 'package:Venti/Services/AuthenticationService.dart';
import 'package:Venti/Services/NavigationService.dart';
import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:Venti/Services/SignUpService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../UniversalComponents/LoadingButton.dart';
import '../UniversalComponents/SubmitButton.dart';
import '../UniversalComponents/TextInput.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _firstName;
  late String _lastName;
  late String _emailAddress;
  late String _phoneNumber;
  late String _password;
  late String _confirmPassword;
  bool _isLoading = false;
  String responseMessage = "";
  SecurePreferencesService _storageService = SecurePreferencesService();
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 36.0, 8.0, 60.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),

                      //First Name
                      TextInput(
                        label: "First Name",
                        hintText: "",
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _firstName = value!;
                        },
                      ),

                      //Last name
                      TextInput(
                        label: "Last name",
                        hintText: "",
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _lastName = value!;
                        },
                      ),

                      TextInput(
                        label: "Email Address",
                        isEmail: true,
                        hintText: "",
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter your Email Address';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _emailAddress = value!;
                        },
                      ),

                      TextInput(
                        label: "Phone Number",
                        hintText: "",
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter your Phone number';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _phoneNumber = value!;
                        },
                      ),

                      //Password
                      TextInput(
                        label: "Password",
                        hintText: "",
                        textInputAction: TextInputAction.next,
                        isPassword: true,
                        validator: (value) {
                          if (value == "") {
                            return 'Please enter a password';
                          }
                          _password = value!;
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),

                      //Password
                      TextInput(
                        label: "Confirm Password",
                        hintText: "",
                        textInputAction: TextInputAction.done,
                        isPassword: true,
                        validator: (value) {
                          if (value == "") {
                            return 'Please confirm your password';
                          } else if (value != _password) {
                            return 'Passwords don\'t match';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _confirmPassword = value!;
                        },
                      ),

                      Text(
                        errorMessage,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.red.shade400,
                        ),
                      ),

                      //Submit Button
                      Column(
                        children: <Widget>[
                          if (_isLoading == false)
                            SubmitButton.SubmitButton(
                              () async {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  await signInRequest();
                                }
                                ;
                              },
                              "Log In",
                            ),
                          if (_isLoading == true) LoadingButton(),
                        ],
                      ),
                      GestureDetector(
                          onTap: redirectToLogIn,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                            child: Text(
                              "Got an account already? Log in here",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _startLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  _stopLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  //
  signInRequest() async {
    _startLoading();

    //create new user object
    NewUser newUser =
        NewUser(_firstName, _lastName, _emailAddress, _phoneNumber, _password);

    print(newUser);
    SignUpService signUpService = SignUpService();
    var response = await signUpService.signUnRequest(newUser);
    _stopLoading();
    print("====================");
    print("response");
    print(response.statusCode);
    if (response.statusCode == 400) {
      var responseBody = jsonDecode(response.body);
      setErrorMessage(responseBody["title"]);
    } else if (response.statusCode == 404) {
      setErrorMessage("Whoops something went wrong, please try again");
      //Todo log error somewhere
    } else if (response.statusCode == 401) {
      setErrorMessage("Incorrect creditentials, please try again");
    } else if (response.statusCode == 408) {
      setErrorMessage("Please check your connection and try again");
    } else {
      setErrorMessage("Whoops something went wrong, please try again");
    }
    return response.statusCode;
  }

  void setErrorMessage(String message) {
    setState(() {
      errorMessage = message;
    });
  }

  redirectToLogIn() {
    NavigationService.goToLoginView();
  }
}
