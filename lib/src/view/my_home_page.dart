import 'package:flutter/material.dart';
import 'package:flutter_mvc/src/controller/main_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final String title = 'MVC Demo';
  final String title1 = 'Push Buttons to increase and decrease value.';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Controller _con = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                widget.title1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(_con.decrementCounter);
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                Text(
                  _con.counter.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(_con.incrementCounter);
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
