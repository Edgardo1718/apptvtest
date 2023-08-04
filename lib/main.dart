import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador Smart TV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
      title: Text(widget.title),
      backgroundColor: Colors.orange,
      elevation: 0.0,
      foregroundColor: Colors.white,
    ),
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Haz presionado este numero de veces:',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _decrementCounter,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: _incrementCounter,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: _resetCounter,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
void _decrementCounter() {
  setState(() {
    _counter--;
  });
}

void _resetCounter() {
  setState(() {
    _counter = 0;
  });
}

}
