import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/my_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> entries = ['', '', '', '', '', '', '', '', ''];
  bool xTurn = true;
  bool gameOver = false;
  /* 
  0  1  2
  3  4  5
  6  7  8
  */

  Map<String, dynamic> checkIfWon() {
    if (((entries[0] == entries[1]) && (entries[1] == entries[2])) &&
        (entries[0] != "" && entries[1] != "" && entries[2] != "")) {
      return {
        "won": true,
        "list": [0, 1, 2]
      };
    } else if (((entries[3] == entries[4]) && (entries[4] == entries[5])) &&
        (entries[3] != "" && entries[4] != "" && entries[5] != "")) {
      print("345");
      return {
        "won": true,
        "list": [3, 4, 5]
      };
    } else if (((entries[6] == entries[7]) && (entries[7] == entries[8])) &&
        (entries[6] != "" && entries[7] != "" && entries[8] != "")) {
      print("678");
      return {
        "won": true,
        "list": [6, 7, 8]
      };
    } else if (((entries[0] == entries[3]) && (entries[3] == entries[6])) &&
        (entries[0] != "" && entries[3] != "" && entries[6] != "")) {
      print("036");
      return {
        "won": true,
        "list": [0, 3, 6]
      };
    } else if (((entries[1] == entries[4]) && (entries[4] == entries[7])) &&
        (entries[1] != "" && entries[4] != "" && entries[7] != "")) {
      print("147");
      return {
        "won": true,
        "list": [1, 4, 7]
      };
    } else if (((entries[2] == entries[5]) && (entries[5] == entries[8])) &&
        (entries[2] != "" && entries[5] != "" && entries[8] != "")) {
      print("258");
      return {
        "won": true,
        "list": [2, 5, 8]
      };
    } else if (((entries[0] == entries[4]) && (entries[4] == entries[8])) &&
        (entries[0] != "" && entries[4] != "" && entries[8] != "")) {
      print("048");
      return {
        "won": true,
        "list": [0, 4, 8]
      };
    } else if (((entries[2] == entries[4]) && (entries[4] == entries[6])) &&
        (entries[2] != "" && entries[4] != "" && entries[6] != "")) {
      print("246");
      return {
        "won": true,
        "list": [2, 4, 6]
      };
    } else {
      return {"won": false, "list": []};
    }
  }

  bool allfilled() {
    return !entries.contains("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            AnimatedContainer(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: xTurn ? Colors.black : Colors.white,
                      width: 5,
                      style: BorderStyle.solid)),
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 400),
              child: Center(
                child: MyText(
                  text: "X",
                  fontSize: 200,
                  color: xTurn ? Colors.black : Colors.black26,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            SizedBox(
                height: 500,
                width: 500,
                child: GridView.builder(
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 30,
                            mainAxisSpacing: 30),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          if (!gameOver) {
                            setState(() {
                              if (entries[index] == "") {
                                if (xTurn) {
                                  entries[index] = "X";
                                  xTurn = false;
                                } else {
                                  entries[index] = "O";
                                  xTurn = true;
                                }
                                if (checkIfWon()["won"]) {
                                  xTurn = !xTurn;
                                  gameOver = true;
                                  showDialog(
                                    barrierColor: Colors.transparent,
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: MyText(
                                          text: xTurn
                                              ? "X Won the game"
                                              : "O Won the game",
                                          color: Colors.black,
                                          fontSize: 20),
                                      content: const MyText(
                                          text: "Want to Play Again ?",
                                          color: Colors.black,
                                          fontSize: 16),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const MyText(
                                                text: "No",
                                                color: Colors.black,
                                                fontSize: 16)),
                                        TextButton(
                                            onPressed: () {
                                              setState(() {
                                                gameOver = false;
                                                entries = [
                                                  '',
                                                  '',
                                                  '',
                                                  '',
                                                  '',
                                                  '',
                                                  '',
                                                  '',
                                                  ''
                                                ];
                                                xTurn = true;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: const MyText(
                                                text: "Yes",
                                                color: Colors.black,
                                                fontSize: 16))
                                      ],
                                    ),
                                  );
                                } else {
                                  if (allfilled()) {
                                    gameOver = true;
                                    showDialog(
                                      barrierColor: Colors.transparent,
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const MyText(
                                            text: "Want to play again",
                                            color: Colors.black,
                                            fontSize: 20),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const MyText(
                                                  text: "No",
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                          TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  gameOver = false;
                                                  entries = [
                                                    '',
                                                    '',
                                                    '',
                                                    '',
                                                    '',
                                                    '',
                                                    '',
                                                    '',
                                                    ''
                                                  ];
                                                  xTurn = true;
                                                });
                                                Navigator.of(context).pop();
                                              },
                                              child: const MyText(
                                                  text: "Yes",
                                                  color: Colors.black,
                                                  fontSize: 16))
                                        ],
                                      ),
                                    );
                                  }
                                }
                              }
                            });
                          }
                        },
                        child: AnimatedContainer(
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                              color: checkIfWon()["list"].contains(index)
                                  ? Colors.green
                                  : Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                          duration: const Duration(milliseconds: 400),
                          child: Center(
                              child: MyText(
                                  text: entries[index],
                                  fontSize: 40,
                                  color: Colors.white)),
                        ),
                      );
                    })),
            const SizedBox(
              width: 50,
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: xTurn ? Colors.white : Colors.black,
                    width: 5,
                    style: BorderStyle.solid),
                shape: BoxShape.rectangle,
              ),
              child: Center(
                child: MyText(
                  text: "O",
                  fontSize: 200,
                  color: xTurn ? Colors.black26 : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
