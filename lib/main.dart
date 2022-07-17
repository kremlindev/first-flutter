import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'First Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _text = 0;

  void _toplama() {
    setState(() {
      this._text = 5 + 6;
    });
  }

  void _sifirla() {
    setState(() {
      this._text = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: FloatingActionButton(
          onPressed: _sifirla,
        child: Icon(Icons.chevron_left),
          tooltip: 'Sıfırla',
          backgroundColor: Colors.indigo,
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '5 + 6 = $_text',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toplama,
        tooltip: 'Toplama',
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }
}