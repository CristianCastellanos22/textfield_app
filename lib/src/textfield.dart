import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputText = "";
  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFielWidget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese el texto aquí:"),
              onSubmitted: (String value) {
                onSubmitted(value);
              },
              controller: controller,
            ),
            Text(inputText)
          ],
        ),
      ),
    );
  }
}
