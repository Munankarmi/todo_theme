import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:to_do/pages/home_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do/theme/theme.dart';
import 'package:to_do/theme/theme_provider.dart';

void main() async {
  // init the hive for local db in mobile
  await Hive.initFlutter();

  //open a box to work with hive
  var box = await Hive.openBox('mybox');

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
