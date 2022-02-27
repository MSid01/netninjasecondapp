import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const List<String> todos = [
    "Add your Todos here",
    "Press delete on right to remove",
    "Add your todos from input"
  ];
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO LIST',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BuildingLayout"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(3.0, 0, 3.0, 0),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/campground.jpg"),
                  ),
                ),
              ),
            ),
            Container(
              
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Oeschinene Lake Campground",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Kandersteg, Switzerland",
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red[700],
                    ),
                    const Text("41")
                  ],
                ),
              ),
            ),
            Container(
              
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue[400],
                      ),
                      const SizedBox(height: 10),
                      Text("CALL", style: TextStyle(color: Colors.blue[400]))
                    ]),
                    Column(children: [
                      Icon(
                        Icons.send,
                        color: Colors.blue[400],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "ROUTE",
                        style: TextStyle(color: Colors.blue[400]),
                      )
                    ]),
                    Column(children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue[400],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "SHARE",
                        style: TextStyle(color: Colors.blue[400]),
                      )
                    ]),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
