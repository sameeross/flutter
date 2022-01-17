import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text('hello to our new app'),
        ),
      ),
    );
  }
}

class Homepage2 extends StatelessWidget {
  const Homepage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gendu po app'),
      ),
      body: Center(
        child: Container(
          child: Text('This is app with app bar'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
