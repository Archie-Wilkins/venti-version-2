import 'package:Venti/BaseLayer/BaseLayer.dart';
import 'package:flutter/material.dart';

import 'Services/NavigationService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey, // set property
      title: 'Venti',
      theme: ThemeData(
          colorScheme: ColorScheme(
            primary: Colors.black,
            //Not used
            secondary: Colors.redAccent,
            //Not used
            tertiary: Colors.pink,
            //Not used
            surface: Colors.green,
            //Not used
            onSurface: Colors.orange,
            //Not used
            onBackground: Colors.yellowAccent,
            brightness: Brightness.light,
            onPrimary: Colors.grey.shade200,
            //Not used
            background: Colors.greenAccent,
            error: Colors.redAccent,
            onSecondary: Colors.black,
            //Not used

            onError: Colors.black,
          ),

          // primarySwatch: Colors.purple,
          // brightness: Brightness.dark,
          // primaryColor: Colors.purple,
          // accentColor: Colors.purple,

          //text style
          textTheme: TextTheme(
            //Headlines
            headlineLarge:
                TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
            headlineMedium:
                TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
            headlineSmall:
                TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),

            displayMedium: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary),

            //Titles
            titleLarge: TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),

            //Body
            bodyLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w300),
            bodyMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300),
            bodySmall: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),

            // Input Labels
            labelMedium: TextStyle(fontSize: 18.0),
            labelSmall: TextStyle(
                fontSize: 18.0, color: Theme.of(context).colorScheme.onPrimary),
          ),

          //Input theme
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            // fillColor: Theme.of(context).colorScheme.primary,
            // focusedBorder: UnderlineInputBorder(
            //   borderSide: const BorderSide(color: Colors.purpleAccent),
            // ),
          )),
      home: const BaseLayer(),
    );
  }
}
