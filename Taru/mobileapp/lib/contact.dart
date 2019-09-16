import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//class About extends StatefulWidget
//{
//  @override
//  _AboutState createState() =>  _AboutState();
//}
//class _AboutState extends State<About>
 //  {
//    GoogleMapController mapController ;
 //    final LatLng _center=const LatLng(45.521563,-122.677433);
    
 //    void _onMapCreated(GoogleMapController controller){
 //      mapController = controller;
//     }  
class Contact extends StatefulWidget{

 @override
  State<StatefulWidget> createState() => ContactState();
}

class ContactState extends State<Contact> {
final scaffoldKey = GlobalKey<ScaffoldState>();
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar:AppBar(
       title: Image.asset("assets/images/bigdataicon.jpeg",
       ),   
       backgroundColor: Colors.white,
        ),

      body:  Container(
        child: SingleChildScrollView(
        child:Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),

        child: Column(
          children: <Widget>[
          SizedBox(height: 15),

          TextFormField(
            decoration: InputDecoration(labelText: "Name",
            hintText: "Your name"
            ),
            keyboardType: TextInputType.text,
            validator: (String value){
              if(value.trim().isEmpty){
                return 'Name is Required';
              }
              return null;
            },
           ),
           SizedBox(height: 10,),

           TextFormField(
            decoration: InputDecoration(labelText: "Student Number",
            hintText: "1810011"
            ),
            keyboardType: TextInputType.phone,
             validator: (val) {
              if(val.length==7){
                  return null;
              }
              return 'Invalid Student No.';
            }

          ),
            TextFormField(
            decoration: InputDecoration(labelText: "Phone Number",
            hintText: "9123456789"
            ),
            keyboardType: TextInputType.phone,
            validator: (val) {
              if(val.length==10){
                 return null;
             }
              return 'Invalid Phone No.' ;
            }
           ),
              
           SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(labelText: "Email",
            hintText: "example@gmail.com",
        
            ),
             keyboardType: TextInputType.emailAddress,
            validator: (val) => !val.contains('@') ?'Invalid Email': null,
           ),
        
        SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(labelText: "Message",
          ),
             keyboardType: TextInputType.text,
             validator: (String value){
              if(value.trim().isEmpty){
                return 'Message is Required';
              }
              return null;
            },
           ),
        
          SizedBox(height: 20,),

           RaisedButton(
             child: Text("Send Message"),
             onPressed:(){
               if(_formKey.currentState.validate()){
                 Scaffold.of(context)
                        .showSnackBar(SnackBar(content:Text('Processing Data')));
                 }
             },
           )

          

              ]
            ),
          ),    
      
                  
                //Container(
                  //GoogleMap(
                  //onMapCreated: _onMapCreated,
                  //initialCameraPosition: CameraPosition(
                    //target: LatLng(45.521563,-122.677433),
                    //zoom: 110,
                 //),
                //),
          ),
      )
    ),
    );
  }
}