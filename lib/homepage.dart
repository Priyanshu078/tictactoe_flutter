import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String x1 = "";
  String x2 = "";
  String x3 = "";
  String y1 = "";
  String y2 = "";
  String y3 = "";
  String z1 = "";
  String z2 = "";
  String z3 = "";
  bool xTurn = true;

  bool checkIfWon() {
    if (x1 != "" &&
        x2 != "" &&
        x3 != "" &&
        y1 != "" &&
        y2 != "" &&
        y3 != "" &&
        z1 != "" &&
        z2 != "" &&
        z3 != "") {
      if ((x1 == x2) && (x2 == x3)) {
        return true;
      } else if ((y1 == y2) && (y2 == y3)) {
        return true;
      } else if ((z1 == z2) && (z2 == z3)) {
        return true;
      } else if ((x1 == y1) && (y1 == z1)) {
        return true;
      } else if ((x2 == y2) && (y2 == z2)) {
        return true;
      } else if ((x3 == y3) && (y3 == z3)) {
        return true;
      } else if ((x1 == y2) && (y2 == z3)) {
        return true;
      } else if ((x3 == y2) && (y2 == z1)) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "X",
              style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30),
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (x1 == "") {
                          if (xTurn) {
                            x1 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            x1 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        x1,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (x2 == "") {
                          if (xTurn) {
                            x2 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            x2 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        x2,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (x3 == "") {
                          if (xTurn) {
                            x3 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            x3 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        x3,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (y1 == "") {
                          if (xTurn) {
                            y1 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            y1 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        y1,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (y2 == "") {
                          if (xTurn) {
                            y2 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            y2 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        y2,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (y3 == "") {
                          if (xTurn) {
                            y3 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            y3 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        y3,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (z1 == "") {
                          if (xTurn) {
                            z1 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            z1 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        z1,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (z2 == "") {
                          if (xTurn) {
                            z2 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            z2 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      height: 30,
                      width: 30,
                      child: Text(
                        z2,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (z3 == "") {
                          if (xTurn) {
                            z3 = "X";
                            if (!checkIfWon()) {
                              xTurn = false;
                            } else {
                              print("won");
                            }
                          } else {
                            z3 = "O";
                            if (!checkIfWon()) {
                              xTurn = true;
                            } else {
                              print("won");
                            }
                          }
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        z3,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const Text(
              "O",
              style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}