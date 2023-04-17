import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
   String name,email,phone;
   WelcomePage({Key? key,required this.name,required this.email,required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Screen Dos'),
      ),
    body: Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tu Nombre: $name'),
            Text('Tu Email: $email'),
            Text('Tu Número de telefono: $phone'),
          ],
        ),
      ),
    ),
    );
  }
}