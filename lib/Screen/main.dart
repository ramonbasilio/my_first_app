import 'package:my_first_app/Components/tasks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
          title: const Text('Programming Language'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: Container(
            color: Colors.blue[500],
            child: ListView(
              children: const [
                Task('Learning Flutter', 'assets/img/flutter.png', 0),
                Task('Learning Python', 'assets/img/python.jpg', 4),
                Task('Learning Java', 'assets/img/java.jpg', 3),
                Task('Learning HTML', 'assets/img/html.png', 2),
                Task('Learning CSS', 'assets/img/css.png', 5),
                Task('Learning Javascript', 'assets/img/javascript.png', 3),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            setState(() {
              opacidade =! opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye_outlined),
        ),
      ),
    );
  }
}
