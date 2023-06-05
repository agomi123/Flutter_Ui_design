import 'package:blackcoffer/components/Cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 270,
                height: 40,
                margin: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              Icon(Icons.menu),
              SizedBox(
                width: 1,
              )
            ],
          )),
          CustomCard(
              name: 'Shubham Gupta',
              value: 33.3,
              location: 'Gorakhpur | UI and UX designer',
              img:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsG0UwNFq0j9cpso7l4J1w23Z5-sOObetIjg&usqp=CAU'),
          CustomCard(
            name: 'Mohafiz Mehadi',
            value: 15.3,
            img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVmCA9mFfk-SibRTa6Yf-kpKhI8anBqypNpw&usqp=CAU',
            location: 'Delhi | fresher',
          ),
          CustomCard(
            name: 'Rawal Roy',
            img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj9QMoM4JNxSsrO_iIRkPPebsThja5DB1oHw&usqp=CAU',
            value: 98.83,
            location: 'Gurgaon | SDE',
          ),
          CustomCard(
            name: 'Tiwnkle Singh',
            value: 313.3,
            img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZulYNACnUR2l56M__jXsz6l0NmXRQID1xQ&usqp=CAU',
            location: 'Mumbai | developer',
          ),
          CustomCard(
            name: 'Asha Bhoslay',
            value: 453.9,
            img:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfJ7-8Sj-uyqWw0t87AyCXVsipQqHR1PY0Jw&usqp=CAU',
            location: 'Jaipur | FLutter developer',
          )
        ],
      ),
    );
  }
}
