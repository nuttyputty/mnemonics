import 'package:flutter/material.dart';
import 'package:mnemonic/mnemonic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mnemonic Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Mnemonic mnemonic = Mnemonic();

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
          MnemonicDisplay(mnemonic: mnemonic),
          RaisedButton(
              child: Text('Regenerate'),
              onPressed: () {
                setState(() {
                  mnemonic = Mnemonic();
                });
              })
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
