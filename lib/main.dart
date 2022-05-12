import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/homepage",
      routes: {"/homepage": (context) => Homepage()},
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late String name = "";
  late int value = 0;
  late double newValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 900,
                color: Colors.green,
                child: Column(
                  children: [
                    Text(name),
                    SizedBox(
                      height: 30,
                    ),
                    Text("$newValue")
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("7",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        name = name + "7";
                        value = value * 10 + 7;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("8",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 8;
                        name = name + "8";
                        ;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("9",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 9;
                        name = name + "9";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("AC",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = 0;
                        newValue = 0;
                        name = "";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("C",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = 0;
                        newValue = 0;
                        name = "";
                        setState(() {});
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("4",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 4;
                        name = name + "4";
                        ;
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("5",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 5;
                        name = name + "5";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("6",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 6;
                        name = name + "6";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("+",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        name = name + "+";
                        newValue = value+newValue;
                        value = 0;
                        
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("-",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        newValue = newValue - value;
                        value = 0;
                        name = name + "-";
                        setState(() {});
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("1",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 1;
                        name = name + "1";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("2",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 2;
                        name = name + "2";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("3",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        value = value * 10 + 3;
                        name = name + "3";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("*",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        newValue = newValue * value;
                        value = 0;
                        name = name + "*";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("/",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        newValue = newValue / value;
                        value = 0;
                        name = name + "÷";
                        setState(() {});
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      child: Container(
                        child: Center(
                          child: Text("0",
                              textScaleFactor: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        height: 65,
                        width: 65,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        name = name + "0";
                        setState(() {});
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      child: Center(
                        child: Text(".",
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      height: 65,
                      width: 65,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                    child: Container(
                      child: Center(
                        child: Text("e",
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      height: 65,
                      width: 65,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      child: Center(
                        child: Text("Π",
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      height: 65,
                      width: 65,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      child: Center(
                        child: Text("=",
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      height: 65,
                      width: 65,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Card(
                elevation: 0.6,
                child: ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                  ),
                  title: Text("Exit",
                      textScaleFactor: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  // onTap: exit(0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
