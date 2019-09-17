import 'package:flutter/material.dart';

class Services extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
       actions:<Widget>[Image.asset("assets/images/bigdataicon.jpeg",
      
         ),],
         title: Text("Services",
          style: TextStyle(
              color: Colors.blue[700],
            
              fontSize: 25.0
              ),),
         backgroundColor: Colors.white,
       ),
      body: Container(
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              SizedBox(height: 30),
              Container(
              child: Text("SERVICES",
               textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.blue[700],
              fontSize: 20.0
              ),
            ),
            ),
            SizedBox(height: 30),

             Text("Big Data Center of excellence is the research and development center established under Ajay Kumar Garg Engineering College. We are the hub of latest technologies. At BDCoE, we strive to stimulate interest in Big Data concept and related technologies among the students of the institution. Besides making serious endeavors to spread knowledge on Big Data, we stand by the subtle acronym of TEAM - Together Everyone Achieves More which has bound the organization and helped it to grow to its present potential. We spear head at technologies like Big Data, Machine learning and Deep learning along with web development and app development.Our belief system includes hereditary learning and constant improvment. We aim at producing competent individuals and doing outsourced projects.",
                textAlign: TextAlign.center,
                style: TextStyle(
                 fontSize:20.0,
                  color: Colors.grey,
                  ),
                ),
          
            Container(
              child: Text(
                "Our team",
                textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.grey,
               fontWeight: FontWeight.bold,
              fontSize: 15.0
              ),
              ),
            ),
              SizedBox(height: 30),
            Container(
              height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child:Card(
                elevation: 100,
            color: Colors.blue,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded
                  (
                    flex: 3,
                    child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("BIG DATA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
            
                    SizedBox(height: 10),

                    Text("Big Data analysis means fetching data from a particular source, storing it in cluster and processing the data stored to gain meaningful insight. We can turn any useless data into usefull one by analysing it, using different Big Data Technologies. Our team is fully devoted in the field of Big Data analytics.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.white,
                  ),
                ),
       ]
                    ),
                   ),
                   SizedBox(width: 10,),
                   Expanded
                   (
                     flex: 2,
                    child:Image.asset("assets/images/bigdata.gif",
                          height: 200,
                          fit: BoxFit.none,
                    ), 
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              ),
            ),

             Container(
               height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[100],
               padding: EdgeInsets.all(10),
              child:Card(
                elevation: 50,
                child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded
                  (
                    flex: 2,
                    child:Image.asset("assets/images/Data-Science.gif",
                          height: 200,
                          fit: BoxFit.none,
                    ),
                   ),
                   Expanded
                   (
                     flex: 3,
                    child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("DATA SCIENCE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
            
                    SizedBox(height: 10),

                    Text("Data science uses the data analysed through Big data tools to predict things. A great example of it is, The suggestions we get on youtube are based on the videos what we see. Companies these days use data science to predict the preferences of their customers and the problems faced by their customers.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                  ),
                ),
       ]
                    ), 
                  ),
                ],
              ),
              ),
            ),

   Container(
              height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[100],
               padding: EdgeInsets.all(10),
              child:Card(
                elevation: 50,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded
                  (
                    flex: 3,
                    child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("MACHINE LEARNING",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
            
                    SizedBox(height: 10),

                    Text("Machine learning is an application of Artificial Intelligence (AI) that provides systems the ability to automatically learn and improve from experience without being explicitly programmed. Machine learning focuses on the development of computer programs that can access data and use it to learn for themselves.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                  ),
                ),
       ]
                    ),
                   ),
                   Expanded
                   (
                     flex: 2,
                    child:Image.asset("assets/images/ML.gif",
                          height: 200,
                          fit: BoxFit.none,
                          ), 
                  ),
                ],
              ),
              ),
            ),

    
              Container(
              height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[100],
               padding: EdgeInsets.all(10),
              child:Card(
                elevation: 50,
                child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded
                  (
                    flex: 2,
                    child:Image.asset("assets/images/webdevelopment.gif",
                          height: 250,
                          fit: BoxFit.none,
                    ),
                   ),
                   Expanded
                   (
                     flex: 3,
                     child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("WEB DEVELOPMENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
            
                    SizedBox(height: 10),
                    
                    Text("Despite being a centre for data analytics we don't just restrict our domain to big data analytics. We try to excel in every domain and thus we have members who are excellent web developers. We build websites and web applications based on the latest technologies in the market and using minimum resources.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                  ),
                ),
       ]
                    ),
                  ),
                ],
              ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[100],
              padding: EdgeInsets.all(10),
              child:Card(
                elevation: 50,
               child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Expanded
                  (
                    flex: 3,
                    child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("COMPETITIVE CODING",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
            
                    SizedBox(height: 10),
                    
                    Text("Despite being a centre for data analytics we don't just restrict our domain to big data analytics. We try to excel in every domain and thus we have members who are excellent web developers. We build websites and web applications based on the latest technologies in the market and using minimum resources.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                  ),
                ),
       ]
                    ),
                   ),
                   Expanded
                   (
                     flex: 2,
                    child:Image.asset("assets/images/weborcp.gif",
                          height: 200,
                          fit: BoxFit.none,
                    ) , 
                  ),
                ],
              ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height-200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[100],
              padding: EdgeInsets.all(10),
              child:Card(
                elevation: 50,
                child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Expanded
                  (
                    flex: 2,
                    child: Image.asset("assets/images/appdevelopment.gif",
                        height: 200.0,
                        fit: BoxFit.none,
                   ),
                  ),
                  
                  SizedBox(width: 10.0),

                   Expanded
                   (
                     flex: 3,
                     child:Column(
                      children: <Widget>[
                       SizedBox(height: 20),

                       Text("APP DEVELOPMENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                       ),
                      ),
                  
                    SizedBox(height: 10),
                    
                    Text("Despite being a centre for data analytics we don't just restrict our domain to big data analytics. We try to excel in every domain and thus we have members who are excellent web developers. We build websites and web applications based on the latest technologies in the market and using minimum resources.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize:15.0,
                    color: Colors.grey,
                  ),
                ),
       ]
                    ),
                  ),
                ],
              ),
              ),
            ),

          ],
          )
        ),
      ),
    );
  }

}