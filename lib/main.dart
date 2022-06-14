import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: Nut(),
  ));
}

class Nut extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Nut> {
  int nut_time = 0;
  String message = "Haha, your N U T count too small, so does your pp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("N U T"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
            child: Column(children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                nut_time++;
                if (100 <= nut_time && nut_time < 200) {
                  message = "Maybe a bit better, but you're still too weak!";
                }
                if (200 <= nut_time && nut_time < 500) {
                  message = "You can't pass me, I have 1000 N U T S!!!";
                }
                if (500 <= nut_time && nut_time < 700) {
                  message = "STOP N U T T I N G!!";
                }
                if (700 <= nut_time && nut_time <= 1000) {
                  message = "STOP IT!!!!!";
                }
                if (1000 < nut_time && nut_time < 1100) {
                  message = "NOOOOOO!!! You've passed my N U T count!";
                }
                if (1100 <= nut_time && nut_time < 1500) {
                  message = "I'm worried about your health man. STOP!";
                }
                if (1500 <= nut_time && nut_time < 2000) {
                  message = "You died because o N U T T I N G too much...";
                }
                if (nut_time >= 2000) {
                  message = "Some legend said that he's still\nN U T T I N G to this day...";
                }
              });
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(const EdgeInsets.all(40)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
            child: new Text("${nut_time.toString()}  N  U  T"),
          ),
          const SizedBox(height: 20),
          Text(message, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18))
        ])),
      ),
    );
  }
}
