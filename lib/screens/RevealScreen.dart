import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RevealScreen extends StatefulWidget {
  const RevealScreen({super.key});

  @override
  State<RevealScreen> createState() => _RevealScreenState();
}

class _RevealScreenState extends State<RevealScreen> {
  late TextEditingController tp = new TextEditingController();
  int age = 0;
   bool flag = false;
   bool flag2 = true;
   bool flag3= false;
   bool flag4= true;
   bool flag5= false;
   bool flag6= true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Reveal'),
          backgroundColor: Color.fromARGB(255, 10, 17, 49),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Select Your Availability",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: DropDownTextField(
                // initialValue: "name4",
                listSpace: 20,
                initialValue: 'Available | Hey Let us Contact',
                listPadding: ListPadding(top: 20),
                enableSearch: true,
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownList: const [
                  DropDownValueModel(
                      name: 'Available | Hey Let us Contact', value: "value1"),
                  DropDownValueModel(name: 'name2', value: "value2"),
                  DropDownValueModel(name: 'name3', value: "value3"),
                ],
                listTextStyle: const TextStyle(color: Colors.red),
                dropDownItemCount: 8,

                onChanged: (val) {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Add your Status",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                style: TextStyle(height: 2.3),
                controller: tp,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hi community | I am open to new connection',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Select Hyper local Distance ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              label: "Select Range",
              activeColor: Color.fromARGB(255, 10, 17, 49),
              value: age.toDouble(),
              onChanged: (value) {
                setState(() {
                  age = value.toInt();
                });
              },
              min: 0.0,
              max: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('1km'),
                SizedBox(
                  width: 240,
                ),
                Text('100km'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select Purpose",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    onPressed: () {
                         setState(() => flag = !flag);
                    },
                    child: Text('Coffee'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                   ElevatedButton(
                    onPressed: () {
                         setState(() => flag2 = !flag2);
                    },
                    child: Text('Buisness'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag2?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag2?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                         setState(() => flag3 = !flag3);
                    },
                    child: Text('Hobbies'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag3?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag3?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                  
                  
                ],
              ),
            ),


            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(
                    onPressed: () {
                         setState(() => flag4 = !flag4);
                    },
                    child: Text('Friendship'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag4?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag4?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                   ElevatedButton(
                    onPressed: () {
                         setState(() => flag5 = !flag5);
                    },
                    child: Text('Movie'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag5?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag5?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                         setState(() => flag6 = !flag6);
                    },
                    child: Text('Dinning'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(flag6?Colors.white:Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          flag6?
                          Color.fromARGB(255, 8, 23, 89):Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: Color.fromARGB(255, 1, 9, 43),
                                    )))),
                  ),
                  
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: Text('Save & Explore'),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 8, 23, 89)                        ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                        color: Color.fromARGB(255, 1, 9, 43),
                                      )))),
                    ),
            ),
          ]),
        ));
  }
}
