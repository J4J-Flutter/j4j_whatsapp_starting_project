import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// The color of the app's surface. This color is used e.g. to fill the
/// background of a button, card, appbar or dialog.
/// https://m3.material.io/components/tabs/specs
const Color kAppSurfaceColor = Color(0xff075E54);

/// The color of objects placed on top of the surface, such as text and icons.
/// https://m3.material.io/components/top-app-bar/specs
const Color kOnSurfaceColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        colorScheme: const ColorScheme.light(
          primary: kOnSurfaceColor,
          onPrimary: kAppSurfaceColor,
          surface: kAppSurfaceColor,
          onSurface: kOnSurfaceColor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
