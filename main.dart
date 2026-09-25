import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}
class MyHomePageState extends State<MyHomePage>{
  var no1Controller= TextEditingController();
  var no2Controller =TextEditingController();
  var Result="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Simple Calculator')),
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue.shade100,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                   SizedBox(width: 300,

                    child: TextField(
                      controller: no1Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: 300,
                    child: TextField(
                      controller: no2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [

                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1Controller.text.toString());
                        var no2=int.parse(no2Controller.text.toString());
                        var sum= no1+no2;
                        Result =" $sum";
                        setState(() {

                        });
                      }, child: Icon(Icons.add,size: 21,)),
                      ElevatedButton(onPressed:(){
                        var no1= int.parse(no1Controller.text.toString());
                        var no2=int.parse(no2Controller.text.toString());
                        var Differnce=no1-no2;
                        Result ="  $Differnce";
                        setState(() {

                        });
                      } , child: Icon(Icons.remove,size: 21,),),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2=int.parse(no2Controller.text.toString());
                        var product =no1*no2;
                        Result ="$product";
                        setState(() {
                          
                        });
                      }, child:Icon(Icons.clear,size: 21,) ,),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1Controller.text.toString());
                        var no2= int.parse(no2Controller.text.toString());
                        var divided =no1/no2;
                        Result="$divided";
                        setState(() {

                        });
                      }, child: FaIcon(FontAwesomeIcons.divide,size: 21,)

                      ),

                    ],
                    
                  ),
                  
                ),
                Padding(padding: EdgeInsetsGeometry.all(21),child: Text(Result,style: TextStyle(fontSize: 21),),)
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}