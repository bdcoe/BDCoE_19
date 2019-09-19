import 'package:flutter/material.dart';


class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
     appBar:AppBar(
       actions:<Widget>[Image.asset("assets/images/bigdataicon.jpeg",
      
         ),],
         title: Text("Home",
          style: TextStyle(
              color: Colors.blue[700],
            
              fontSize: 25.0
              ),),
         backgroundColor: Colors.white,
       ),
       
       body: SingleChildScrollView(
           child: Padding(
            padding: const EdgeInsets.all(35.0),
                child: Column(
          children: <Widget>[
           SizedBox(height: 100,),
          Container(
            child: Center(
              child:Text("BIG DATA CENTER ",
              style: TextStyle(
              color: Colors.blue[700],
               fontWeight: FontWeight.bold,
              fontSize: 30.0
              ),
              ),
             ),
          ),
           Container(
            child: Center(
              child:Text("OF EXCELLENCE ",
              style: TextStyle(
              color: Colors.blue[700],
               fontWeight: FontWeight.bold,
              fontSize: 30.0
              ),
              ),
             ),
          ),
SizedBox(height: 20,),
           Text("Powering What's Next",
              style: TextStyle(
              color: Colors.grey,
               fontWeight: FontWeight.bold,
              fontSize: 20.0
              ),
              ),

          SizedBox(height: 70),

          Divider(
            color: Colors.white,
          ),

            SizedBox(height: 20),

            Text("Upcoming Events",
              style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0
              ),
              ),

            SizedBox(height: 40),

           RaisedButton(
             child: Text("Workshop"),
             onPressed:(){
                
                 }
           )


          ]
       )
        )
    ),
    );
  }
}