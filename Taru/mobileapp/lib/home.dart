import 'package:flutter/material.dart';
import 'package:mobileapp/homepage.dart';
import './register.dart';
import './services.dart';
import './team.dart';
import './contact.dart';
import './homepage.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
 }


class HomeState extends State<Home>
{
  List<Widget> listpages=[
       Register(),
        Team(),
        Homepage(),
        Services(),
        Contact(),
      ];
     int currentIndex=2;
     void onitemtapped(int index){
       print(index);
     setState(() {
       currentIndex=index;
    }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar:AppBar(
        //   title: Text("BDCoE"),
        // ), 
        body: listpages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,
        onTap: onitemtapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("data"),
            
            icon: Icon(Icons.format_align_center,color: Colors.blue[500],)
          ),

          BottomNavigationBarItem(
            title: Text("data"),
            icon: Icon(Icons.people,color: Colors.blue[500],)
          ),

          BottomNavigationBarItem(
            title: Text("data"),
                icon: Icon(Icons.home,color: Colors.blue[500],)
          ),

          BottomNavigationBarItem(
            title: Text("data"),
            icon: Icon(Icons.satellite,color: Colors.blue[500],)
          ),

          BottomNavigationBarItem(
            title: Text("data"),
            icon: Icon(Icons.phone,color: Colors.blue[500],)
          ),
        ],
      ),
     
    );
  }
}