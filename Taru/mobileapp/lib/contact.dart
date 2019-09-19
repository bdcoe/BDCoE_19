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


String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }
//Here, We have set 10 digits validation on mobile number.
  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if(value.length != 10){
      return "Mobile number must 10 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
    return null;
  }
   String validateStudentNo(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Student Number is Required";
    } else if(value.length != 7){
      return "Student number must 7 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Student Number must be digits";
    }
    return null;
  }
  //For Email Verification we using RegEx.
  String validateEmail(String value) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }else {
      return null;
    }
  }

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
       actions:<Widget>[Image.asset("assets/images/bigdataicon.jpeg",
      
         ),],
         title: Text("Contact Us",
          style: TextStyle(
              color: Colors.blue[700],
            
              fontSize: 25.0
              ),),
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
            validator: validateName
           ),
           SizedBox(height: 10,),

           TextFormField(
            decoration: InputDecoration(labelText: "Student Number",
            hintText: "1810011"
            ),
            keyboardType: TextInputType.phone,
             validator: validateStudentNo

          ),
            TextFormField(
            decoration: InputDecoration(labelText: "Phone Number",
            hintText: "9123456789"
            ),
            keyboardType: TextInputType.phone,
            validator: validateMobile
           ),
              
           SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(labelText: "Email",
            hintText: "example@gmail.com",
        
            ),
             keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
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