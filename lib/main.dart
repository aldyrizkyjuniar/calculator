import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _num1 = new TextEditingController();
  TextEditingController _num2 = new TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: new Icon(Icons.home),
          title: new Center(
            child: Text('Fraction Calculator'),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.android,
                  size: 125,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num1,
                    style: new TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Enter first number",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num2,
                    style: new TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Second number",
                      fillColor: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: Text(
                    "Result:$result",
                    style: new TextStyle(
                      fontSize: 36,
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Merriweather",
                    ),
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => plus(),
                      child: Text("+"),
                    ),
                    new RaisedButton(
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => minus(),
                      child: Text("-"),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => divide(),
                      child: Text("/"),
                    ),
                    new RaisedButton(
                      color: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => multiple(),
                      child: Text("*"),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: RaisedButton(
                    color: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () => reset(),
                    child: Text('Reset'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void minus() {
    setState(() {
      double a = double.parse(_num1.text);
      double b = double.parse(_num2.text);
      result = a - b;
    });
  }

  void divide() {
    setState(() {
      double a = double.parse(_num1.text);
      double b = double.parse(_num2.text);
      result = a / b;
    });
  }

  void multiple() {
    setState(() {
      double a = double.parse(_num1.text);
      double b = double.parse(_num2.text);
      result = a * b;
    });
  }

  void plus() {
    setState(() {
      double a = double.parse(_num1.text);
      double b = double.parse(_num2.text);
      result = a + b;
    });
  }

  reset() {
    _num1.text = '';
    _num2.text = '';
    result = 0;
  }
}
