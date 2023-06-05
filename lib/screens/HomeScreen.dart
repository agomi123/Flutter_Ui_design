import 'package:blackcoffer/screens/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
     DashBoard(),
    Text('Network Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Chat Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Contact Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('HashTag Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
       body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
        bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.remove_red_eye,size: 25,),  
            label: 'Explore',
             backgroundColor: Color.fromARGB(255, 207, 207, 207)
            
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.group_work_rounded,size: 25,),  
           label: 'Network',   
           backgroundColor: Color.fromARGB(255, 207, 207, 207) 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.chat,size: 25,),  
           label: 'Chat',   
            backgroundColor: Color.fromARGB(255, 207, 207, 207)
          ),
          BottomNavigationBarItem(  
            icon: Icon(Icons.contact_page,size: 25,),  
           label: 'Contact',   
            backgroundColor: Color.fromARGB(255, 207, 207, 207) 
          ),BottomNavigationBarItem(  
            icon: Icon(Icons.tag,size: 25,),  
           label: 'Hashtags',   
            backgroundColor: Color.fromARGB(255, 207, 207, 207) 
          ),

        ],  
       type: BottomNavigationBarType.fixed,  
        currentIndex: _selectedIndex,  
       backgroundColor: Color.fromARGB(255, 241, 241, 241),
        iconSize: 20,  
        onTap: _onItemTapped,  
        selectedItemColor: Color.fromARGB(255, 1, 1, 105),
        elevation: 0 
      ),  
    );
  }
}
