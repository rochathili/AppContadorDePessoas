import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  String textoQuantidade = "";

  void decrement() {
    if (count == 0)
      print(count);
    else {
      setState(() {
        count--;
      });
      print(count);
    }
  }

  void increment() {
    if (count >= 20) {
      print(count);
    } else {
      setState(() {
        count++;
      });
      print(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (count >= 0 && count < 20) {
      textoQuantidade = "Pode entrar!";
    }
    else
      textoQuantidade = "Cheio!";

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/lounge.png"), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textoQuantidade,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(count.toString(),
                    style: const TextStyle(fontSize: 100, color: Colors.white)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text("Saiu",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  SizedBox(
                    width: 64,
                  ),
                  TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text("Entrou",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
