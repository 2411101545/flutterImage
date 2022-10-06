import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = 'fondo.jpg';
  int index = 0;
   List<String> collections = ['polar.jpeg', 'panda.jpg', 'pardo.jpg', 'escandalo.jpg', 'esc.jpg', 'es.jpg'];


  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 5 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget | 190032"),
        backgroundColor: Color.fromARGB(255, 32, 1, 126),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  'assets/images/' + flutterText,
                    width: 250,
                    height: 300,),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style:
                  
                      ElevatedButton.styleFrom(primary: Color.fromARGB(255, 89, 7, 109)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
