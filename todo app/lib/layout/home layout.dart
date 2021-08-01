import 'package:flutter/material.dart';
import 'package:note_app/data/data.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[400],
        title: Text(
          titles[this.currentIndex],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: screens[this.currentIndex]),
      floatingActionButton:FloatingActionButton(
        backgroundColor:Colors.deepOrangeAccent[400] ,
        child: Icon(
          Icons.add
        ) ,
          onPressed: () {
            // try {
            //   var name = await getName();
            //   print(name);
            //   throw('Eroooooooor !!');
            // } catch (e) {
            //   // TODO
            //   print('error is: ${e.toString()}');
            // }
            getName().then((value){
              print(value);
              throw('Eroooooooor !!');
            }).catchError((e){
              print('error is: ${e.toString()}');
            });
          },
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrangeAccent[400], 
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,     
        type: BottomNavigationBarType.fixed,
        currentIndex: this.currentIndex ,
        onTap: (index){
          setState(() {
            this.currentIndex = index ;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.check_circle_outline_rounded,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.archive,
            ),
            label: 'Archive',
          ),
        ],
      ),

    );
   
  }
  Future <String>  getName()async{
     return 'ali mohammed';
     
   }
}