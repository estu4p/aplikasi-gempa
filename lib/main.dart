import 'package:flutter/material.dart';
import 'package:gempa/pages/into_page.dart';
import 'package:gempa/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        // textTheme: ThemeData.light().textTheme,
      ),
      routes: {
        '/intopage': (context) => const IntoPage(),
        '/menupage': (context) => const MenuPage(),
        // '/detailpage': (context) => const DetailPage(),
      },
      home: const IntoPage(),
    );
  }
}
