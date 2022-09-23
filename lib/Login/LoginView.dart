import 'package:Venti/DTOs/SecureStorage.dart';
import 'package:Venti/Home/HomeView.dart';
import 'package:Venti/Services/AuthenticationService.dart';
import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import '../Services/NavigationService.dart';
import '../UniversalComponents/LoadingButton.dart';
import '../UniversalComponents/SubmitButton.dart';
import '../UniversalComponents/TextInput.dart';
import 'SignUpView.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;
  bool _isLoading = false;
  String responseMessage = "";
  SecurePreferencesService _storageService = SecurePreferencesService();
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 130.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Lottie.network(
                      'https://assets8.lottiefiles.com/packages/lf20_gjRCmXyruI.json',
                      height: 200,
                    ),
                    const Text(
                      "Log In",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),

                    //Username
                    TextInput(
                      label: "Email Address",
                      isEmail: true,
                      hintText: "",
                      validator: (value) {
                        if (value == "") {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _username = value!;
                      },
                    ),

                    //Password
                    TextInput(
                      label: "Password",
                      hintText: "",
                      isPassword: true,
                      validator: (value) {
                        if (value == "") {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
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
                                int responseCode = await signInRequest();
                                if (responseCode == 200) {
                                  redirectToHome();
                                }
                              }
                              ;
                            },
                            "Log In",
                          ),
                        if (_isLoading == true) LoadingButton(),
                      ],
                    ),
                    //Go to sign up
                    GestureDetector(
                        onTap: redirectToSignUp,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16.0, 0, 0),
                          child: Text(
                            "Don't have an account? Sign up here",
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

  Future<int> signInRequest() async {
    print("Signing in ");
    _startLoading();

    AuthenticationService authAPI = AuthenticationService();
    var response = await authAPI.signInRequest(_username, _password);
    _stopLoading();

    if (response.statusCode == 200) {
      //call authentication service
      //redirect
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

  void redirectToSignUp() async {
    NavigationService.goToSignUpView();
  }

  void redirectToHome() async {
    NavigationService.goToHomeView();
  }
}
