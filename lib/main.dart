import 'package:my_first_app/tasks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('My Tasks'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 1000),
          child: Container(
            color: Colors.blue[500],
            child: ListView(
              children: const [
                Task('Aprendendo Flutter', 'assets/img/flutter.png', 0),
                Task('Aprendendo Python', 'assets/img/python.jpg', 4),
                Task('Aprendendo Java', 'assets/img/java.jpg', 3),
                Task('Aprendendo HTML', 'assets/img/html.png', 2),
                Task('Aprendendo CSS', 'assets/img/css.png', 5),
                Task('Aprendendo Javascript', 'assets/img/javascript.png', 3)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade =! opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye_outlined),
        ),
      ),
    );
  }
}

class initialScreen extends StatefulWidget {
  const initialScreen({Key? key}) : super(key: key);

  @override
  State<initialScreen> createState() => _initialScreenState();
}

class _initialScreenState extends State<initialScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
