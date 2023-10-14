import 'package:flutter/material.dart';
import 'package:tdd_project/password_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final formKey = GlobalKey<FormState>();
  var password = '____';
  TextEditingController textControl = TextEditingController();

  @override
  void dispose() {
    textControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Password generator'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    password,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: textControl,
                    decoration: const InputDecoration(
                      hintText: "Entrer un nombre",
                      icon: Icon(
                        Icons.numbers,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer un chiffre';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        password =
                            PassWord().genPwd(int.parse(textControl.text));
                      });
                      textControl.clear();
                    },
                    child: const Text('Click to generate'),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
