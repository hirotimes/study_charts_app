import 'package:flutter/material.dart';
import 'app.dart' as app;

const MaterialColor _mimosaSwatch = const MaterialColor(
    0xFF90CAF9,
    const <int, Color> {
      // Base: Light Blue 100
//      50: const Color(0xFFF6FCFF),
//      100: const Color(0xFFE8F7FE),
//      200: const Color(0xFFD9F2FE),
//      300: const Color(0xFFCAEDFD),
//      400: const Color(0xFFBEE9FC),
//      500: const Color(0xFFB3E5FC),
//      600: const Color(0xFFACE2FC),
//      700: const Color(0xFFA3DEFB),
//      800: const Color(0xFF9ADAFB),
//      900: const Color(0xFF8BD3FA),
      // Base: Light Blue 200
//      50: const Color(0xFFF0FAFE),
//      100: const Color(0xFFD9F2FE),
//      200: const Color(0xFFC0EAFD),
//      300: const Color(0xFFA7E1FC),
//      400: const Color(0xFF94DAFB),
//      500: const Color(0xFF81D4FA),
//      600: const Color(0xFF79CFF9),
//      700: const Color(0xFF6EC9F9),
//      800: const Color(0xFF64C3F8),
//      900: const Color(0xFF51B9F6),
      // Base: Blue 200
      50: const Color(0xFFF2F9FE),
      100: const Color(0xFFDEEFFD),
      200: const Color(0xFFC8E5FC),
      300: const Color(0xFFB1DAFB),
      400: const Color(0xFFA1D2FA),
      500: const Color(0xFF90CAF9),
      600: const Color(0xFF88C5F8),
      700: const Color(0xFF7DBDF7),
      800: const Color(0xFF73B7F6),
      900: const Color(0xFF61ABF5),
    }
);

void main() async {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // supportedLocales: [
      //   Locale('ja', 'JP'),
      // ],
      title: 'W3MIMOSA App',
      initialRoute: app.initialRoute,
      routes: app.makeRoutes(),
      theme: ThemeData(
          primarySwatch: _mimosaSwatch
      ),
    );
  }
}