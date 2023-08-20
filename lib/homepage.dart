import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/my_text.dart';

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
        title: MyText(
          text: widget.title,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyText(
              text: "X",
              fontSize: 200,
              color: xTurn ? Colors.black : Colors.black26,
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
                      child: Center(
                          child: MyText(
                              text: x1, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                        child: MyText(
                          text: x2,
                          fontSize: 40,
                          color: Colors.white,
                        ),
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
                      child: Center(
                          child: MyText(
                              text: x3, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                        child: MyText(
                          text: y1,
                          fontSize: 40,
                          color: Colors.white,
                        ),
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
                      child: Center(
                          child: MyText(
                              text: y2, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                          child: MyText(
                              text: y3, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                          child: MyText(
                              text: z1, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                          child: MyText(
                              text: z2, fontSize: 40, color: Colors.white)),
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
                      child: Center(
                          child: MyText(
                              text: z3, fontSize: 40, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            MyText(
              text: "O",
              fontSize: 200,
              color: xTurn ? Colors.black26 : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
