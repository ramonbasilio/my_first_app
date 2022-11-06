import 'package:flutter/material.dart';

Scaffold
(
appBar: AppBar
(
leading: Container
(
),title: const Text('

Daily Tasks
'
)
,
)
,
body: AnimatedOpacity
(
opacity: opacidade
? 1 :
0
,
duration: const Duration(milliseconds: 800
)
,
child: Container
(
color: Colors.green[100
]
,
child: ListView
(
children: const [Task('Walking with a dog', 'assets/img/walking_with_a_dog.jpg', 1),
Task('Finish homework', 'assets/img/finish_homework.webp', 4),
Task('Clean the house', 'assets/img/clean_the_house.jpeg', 3),
Task('Send an email to the boss', 'assets/img/send_a_email.jpeg', 2),
Task('Call grandma', 'assets/img/call_grandma.jpeg', 5),
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
)
,
)