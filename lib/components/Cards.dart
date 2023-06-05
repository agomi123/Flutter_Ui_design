import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String location;
  final double value;
  final String img;
  const CustomCard(
      {super.key,
      required this.name,
      required this.location,
      required this.img,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
          width: 300,
          height: 240,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255), //New
                  blurRadius: 25.0,
                  offset: Offset(0, -10))
            ],
          ),
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add),
                        Text('Invite'),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 1, 105),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(location),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Within ' + value.toString() + 'km',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 1, 105),
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 140,
                          height: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              backgroundColor:
                                  Color.fromARGB(255, 156, 156, 156),
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 1, 1, 105)),
                              value: 0.3,
                            ),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Coffee | Business | Friendship',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 1, 105))),
                Container(
                    width: 200,
                    child: Text('Hi community! I am open to new connection😁'))
              ],
            ),
          ),
        ),
        Container(
          width: 80,
          height: 100,
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
