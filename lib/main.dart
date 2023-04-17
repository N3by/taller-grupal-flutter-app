import 'package:flutter/material.dart';
import 'package:transfer_data/welcom_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Sceen App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Uno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingresa tu nombre'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ingresa tu Correo elenctrónico'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ingresa tu número de teléfono'
                ),
              ),
            ),
            ElevatedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(name: _name.text, email: _email.text, phone: _phone.text)));

            }, child: const Text('Pasar a la siguiente Screen'))
          ],
        ),
      ),
    );
  }
}