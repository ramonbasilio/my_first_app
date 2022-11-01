import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int difficultyLeve;

  const Difficulty({
    required this.difficultyLeve,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 25,
          color: (difficultyLeve >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 25,
          color: (difficultyLeve >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 25,
          color: (difficultyLeve >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 25,
          color: (difficultyLeve >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 25,
          color: (difficultyLeve >= 5) ? Colors.blue : Colors.blue[100],
        )
      ],
    );
  }
}
