import 'package:flutter/material.dart';

void main() {
  runApp(const GameApp());
}

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Game Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int _score = 0;

  void _incrementScore() {
    setState(() {
      _score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This is a very basic representation of a game screen.
    // Flutter's widget-based approach allows for complex UI and animations.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Flutter Game'),
      ),
      body: Center(
        // The core of a Flutter game can be built using custom widgets
        // and leveraging Flutter's rendering engine (Impeller).
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap the button to score points:',
            ),
            Text(
              '$_score',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // Interactive elements like buttons are fundamental for gameplay.
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementScore,
        tooltip: 'Score',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
