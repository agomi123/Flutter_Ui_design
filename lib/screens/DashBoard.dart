import 'package:blackcoffer/screens/Business.dart';
import 'package:blackcoffer/screens/Personal.dart';
import 'package:blackcoffer/screens/RevealScreen.dart';
import 'package:blackcoffer/screens/merchant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 17, 49),
        bottom: const TabBar(
          tabs: [
            Tab(
              text: 'PERSONAL',
            ),
            Tab(
              text: 'BUSINESS',
            ),
            Tab(
              text: 'MERCHANT',
            ),
          ],
        ), // T
        title: Column(children: [
          Text(
            'Howdy Ramji Sharma!!',
            style: TextStyle(fontSize: 15),
          ),
          Container(
            child: Row(children: [
              Icon(
                Icons.location_on,
                size: 13,
              ),
              Text(
                'Jagdishpur',
                style: TextStyle(fontSize: 13),
              )
            ]),
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RevealScreen()),
              );
              },
              child: Column(
                children: [
                  Icon(Icons.filter_list_sharp), 
                  Text('Refine')],
              ),
            ),
          )
        ],
      ),
      body: TabBarView(  
            children: [  
              PersonalScreen(),  
              Business(),
              Merchant()  
            ],  
          ),  
    );
  }
}
