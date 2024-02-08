import 'package:flutter/material.dart';
// import 'package:toonflix/widgets/dashboard.dart';
import 'package:toonflix/screens/home_screen.dart';
// import 'package:toonflix/services/api_service.dart';
// import 'dart:io';

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..userAgent =
//           'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
//   }
// }

void main() {
  // HttpOverrides.global = MyHttpOverrides();
  // ApiService().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFFFFFFF),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF000000),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
