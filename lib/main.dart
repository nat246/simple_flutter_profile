import 'package:flutter/material.dart';
import 'package:simple_flutter_profile/core/notifiers.dart';
import 'package:simple_flutter_profile/pages/home_page.dart';
import 'package:simple_flutter_profile/widget/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            // brightness: Brightness.dark,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                brightness: isDark ? Brightness.light : Brightness.dark),
            // primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
