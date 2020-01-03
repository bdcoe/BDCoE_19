import 'package:flutter/material.dart';
//import 'package:firebase_storage/firebase_storage.dart';

class Register extends StatefulWidget{

 @override
  State<StatefulWidget> createState() => RegisterState();
}

class Year{
  int id;
  String year;
  Year(this.id,this.year);
  static List<Year> getYears(){
    return <Year>[
      Year(1,'First'),
      Year(2,'Second'),
      Year(3,'Third'),
      Year(4,'Fourth'),
    ];
  }

}

class RegisterState extends State<Register> {

List<Year> _years = Year.getYears();
List<DropdownMenuItem<Year>> _dropdownMenuItems;
Year _selectedYear;

@override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_years);
    _selectedYear = _dropdownMenuItems[0].value;
    super.initState();
  }
 
  List<DropdownMenuItem<Year>> buildDropdownMenuItems(List years) {
    List<DropdownMenuItem<Year>> items = List();
    for (Year year in years) {
      items.add(
        DropdownMenuItem(
          value: year,
          child: Text(year.year),
        ),
      );
    }
    return items;
  }
 
  onChangeDropdownItem(Year selectedYear) {
    setState(() {
      _selectedYear = selectedYear;
    });
  }

final scaffoldKey = GlobalKey<ScaffoldState>();
final _formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar:AppBar(
       title:Image.asset("assets/images/bigdataicon.jpeg",
         ),
         backgroundColor: Colors.white,
       ),
      body: Container(
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
            decoration: InputDecoration(labelText: "University Roll Number",
            hintText: "1802710132"
            ),
            keyboardType: TextInputType.phone,
            validator: (val) {
              if(val.length==10){
                 return null;
             }
              return 'Invalid Roll No.' ;
            }
           ),
              
           SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(labelText: "Email",
            hintText: "example@gmail.com",
            ), 
            keyboardType: TextInputType.emailAddress,
           ),
           SizedBox(height: 10,),
            Text("Year"),
            DropdownButton(
              value:  _selectedYear,
              items: _dropdownMenuItems,
              onChanged: onChangeDropdownItem,
            ),

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
   );
  }
}
 