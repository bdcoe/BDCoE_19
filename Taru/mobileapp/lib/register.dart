
import 'package:flutter/material.dart';
import 'package:mobileapp/contact.dart';
//import 'package:firebase_storage/firebase_storage.dart';

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
  String validateRollNo(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Roll Number is Required";
    } else if(value.length != 10){
      return "Roll number must 10 digits";
    }else if (!regExp.hasMatch(value)) {
      return "Roll Number must be digits";
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



class Register extends StatefulWidget{

 @override
  State<StatefulWidget> createState() => RegisterState();
}

class RegisterState extends State<Register> {

var _years = ['First','Second','Third','Fourth'];
var _currentItemSelected = 'First';

var _branches = ['CSE','IT','ME','CE','EI','ECE','EN'];
var _currentItemSelected2 = 'CSE';


final scaffoldKey = GlobalKey<ScaffoldState>();
final _formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
      appBar:AppBar(
       actions:<Widget>[Image.asset("assets/images/bigdataicon.jpeg",
      
         ),
      ],
         title: Text("Register",
          style: TextStyle(
              color: Colors.blue[700],
            
              fontSize: 25.0
              ),
        ),
         backgroundColor: Colors.white,
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Card(
        color: Colors.white,
        child: SingleChildScrollView(
        child:Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),

        child: Column(
          children: <Widget>[
          SizedBox(height: 15),

         // Text("Name",
        //    textAlign:TextAlign.left
         // ),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Name",
            hintText: "Your name"
            ),
            keyboardType: TextInputType.text,
              validator: validateName,
            //validator: (String value){
            //  if(value.trim().isEmpty){
            //    return 'Name is Required';
             // }
           //   return null;
           // },
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
            decoration: InputDecoration(labelText: "University Roll Number",
            hintText: "1802710132"
            ),
            keyboardType: TextInputType.phone,
            validator: validateRollNo,
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
           
           Row(
             children:<Widget>[
           
               Expanded(
                 flex: 1,
                 child:Column(
                   children:<Widget>[
                     Text("Year"),
            DropdownButton<String>(
              items: _years.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value:dropDownStringItem,
                  child: Text(dropDownStringItem)
                   );
              }

              ).toList(),

              onChanged: (String newValueSelected){
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
            ),
                   ]
                 ),
               ),
             
            SizedBox(width: 10,),
            
               Expanded(
                 flex: 1,
                 child:Column(
                   children:<Widget>[
                     Text("Branch"),
            DropdownButton<String>(
               items: _branches.map((String dropDownStringItem2){
                return DropdownMenuItem<String>(
                  value:dropDownStringItem2,
                  child: Text(dropDownStringItem2)
                   );
              }

              ).toList(),

              onChanged: (String newValueSelected2){
                setState(() {
                  this._currentItemSelected2 = newValueSelected2;
                });
              },
              value: _currentItemSelected2,
            )
                   ]
                 ),
               ),
           
             ]),
          SizedBox(height: 20,),

           RaisedButton(
             child: Text("SUBMIT"),
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
            ),
          ),
        ),
      ),
    );
  }
}
