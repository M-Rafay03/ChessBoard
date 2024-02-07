import "package:flutter/material.dart";

void main() {
  runApp(const Chessboard());
}

class Chessboard extends StatelessWidget {
  const Chessboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("ChessBoard"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(7, (int index) {
          return rowWidget(index + 1);
        }),
      ),
    );
  }

  Row rowWidget(int rowNumber) {
    if (rowNumber == 1 || rowNumber == 7) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget(Colors.black, Colors.white),
          iconWidget(Colors.white, Colors.black),
          iconWidget(Colors.black, Colors.white),
          iconWidget(Colors.white, Colors.black),
          iconWidget(Colors.black, Colors.white),
          iconWidget(Colors.white, Colors.black),
        ],
      );
    } else if (rowNumber % 2 == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
        ],
      );
    }
  }

  Widget boxWidget(Color color) {
    return Container(
      height: 25,
      width: 25,
      color: color,
    );
  }

  Widget iconWidget(Color color, Color iconColor) {
    return Container(
      height: 25,
      width: 25,
      color: color,
      child: Icon(
        Icons.circle,
        color: iconColor,
        size: 17,
      ),
    );
  }
}
