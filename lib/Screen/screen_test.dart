import 'package:flutter/material.dart';

class screenTest extends StatefulWidget {
  const screenTest({Key? key}) : super(key: key);

  @override
  State<screenTest> createState() => _screenTestState();
}

class _screenTestState extends State<screenTest> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Only Test'),
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black, width: 2)),
              child: Column(
                children: [
                  Container(
                    height: 360,
                    width: 350,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your name',
                              fillColor: Colors.white70,
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Your name',
                              fillColor: Colors.white70,
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Container(
                        height: 360,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  print(nameController);
                                },
                                child: Text('Add'))
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
