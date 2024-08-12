import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorChangeAppBar(),
    );
  }
}

class ColorChangeAppBar extends StatefulWidget {
  const ColorChangeAppBar({super.key});

  @override
  _ColorChangeAppBarState createState() => _ColorChangeAppBarState();
}

class _ColorChangeAppBarState extends State<ColorChangeAppBar> {
  Color _appBarColor = Colors.blue; // Default AppBar color

  void _changeAppBarColor(Color color) {
    setState(() {
      _appBarColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change AppBar Color'),
        backgroundColor: _appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _changeAppBarColor(Colors.red),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text('Red'),
            ),
            const SizedBox(height: 16), // Adds space between buttons
            ElevatedButton(
              onPressed: () => _changeAppBarColor(Colors.green),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Green'),
            ),
            const SizedBox(height: 16), // Adds space between buttons
            ElevatedButton(
              onPressed: () => _changeAppBarColor(Colors.blue),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Blue'),
            ),
            const SizedBox(height: 16), // Adds space between buttons
            ElevatedButton(
              onPressed: () => _changeAppBarColor(Colors.orange),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Orange'),
            ),
          ],
        ),
      ),
    );
  }
}
