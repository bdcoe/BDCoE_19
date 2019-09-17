import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


_launchURL() async{
  const url = "https://flutter.dev";
  if (await canLaunch(url)){
    await launch(url);
 }
 else{
   throw 'Could noy launch $url';
 }
}
class Team extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
       appBar:AppBar(
       title:Image.asset("assets/images/bigdataicon.jpeg",
         ),
      backgroundColor: Colors.white,
       ),
       body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           SizedBox(height: 30,),
          Container(
            child: Center(
              child:Text("OUR TEAM", 
              style: TextStyle(
              color: Colors.blue[700],
               fontWeight: FontWeight.bold,
              fontSize: 30.0
              ),
              ),
             ),
          ),
      
          SizedBox(height: 30,),
          Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 80,
                color: Colors.blue,
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/sid.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("NAME",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize:10.0,
                    color: Colors.black,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 30,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/aryan.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("ARYAN ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 10),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 30,),

            ],
        ),
     ),

            SizedBox(width: 30),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/amulya.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("AMULYA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ankitgupta_cover.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("SRIJAN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(height: 30,),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/shashank.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("SHASHANK SAHAI",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/vidhi2.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("VIDHI ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(width: 10,),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 30),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ripu.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("RIPU DHAWAN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                        
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/gurang.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("GAURANG",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(width: 30,),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ankitgupta_cover.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("ANKIT GUPTA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/anujgupta.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("ANUJ GUPTA ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(width: 30,),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/anupam.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("ANUPAM",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                    
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/harleen_kaur.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("HARLEEN KAUR ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(width: 30,),

             Container(
          child:Row(
            children: <Widget>[

              SizedBox(width: 10),

              Expanded(
                flex: 1,

                child:Card(
                elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/suyash.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("SUYASH",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:GestureDetector
                        (child:Image.asset("assets/images/github.png",
                          height:30,),
                          onTap: _launchURL,
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                  ),

                    SizedBox(height: 10),
                  ]
              ),
           ),
        ),

            SizedBox(width: 10,),

              Expanded(
                flex: 1,
              child:Card(
               elevation: 10,
                color: Colors.blue[100],
                child: Column(
                  children:<Widget>[

                    SizedBox(height: 10,),

                    CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ankitgupta_cover.jpg"),
                  backgroundColor: Colors.white,
                  radius: 50.0,
                    ),

                    SizedBox(height: 10),
                    
                    Text("ANKIT SHARMA ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:10.0,
                    color: Colors.white,
                    ),
                    ),
                    
                    SizedBox(height: 10),

                   Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child:Center(
                         child:GestureDetector(
                          child:Image.asset("assets/images/github.png",
                          height: 30,
                          ),
                          onTap: _launchURL,
                          ),
                        ),
                      ),
                    
                      Expanded(
                        flex:1,
                        child:Center(
                          child:GestureDetector(
                          child:Image.asset("assets/images/linkedin.png",
                          height: 30,              
                          ),
                          onTap: _launchURL,
                          ),

                        
                        ),
                      ),
                      SizedBox(width: 15,),
                      ],
                    ),
                    
                   SizedBox(height: 10),
                  ]
                ) 
             )
         ),

              SizedBox(width: 10,),

            ],
        ),
     ),

            SizedBox(width: 30,),
          ]
        ),
      ),
  );
}

}
