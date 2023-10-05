import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _nbrDeClick = 0;
  int _counter = 0;
  int _counter2 = 2;

  void _incrementCounter() {
    setState(() {
      _nbrDeClick += 1;
      _counter += 2;
      _counter2 += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Vous avez cliqué: $_nbrDeClick',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$_counter + 2 = ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 50,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Text('+2'),
      ),
    );
  }
}
