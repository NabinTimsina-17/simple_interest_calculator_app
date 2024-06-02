import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Interest Calculator",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p="", t="", r="",  result='';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),

            // For Principal
            TextField(
              onChanged: (val){
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Principal",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),

            SizedBox(
              height: 35,
            ),

          // For Time
          
          TextField(
              onChanged: (val){
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Time",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),

            SizedBox(
              height: 35,
            ),

            // For Rate
            TextField(
                onChanged: (val){
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Rate",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // For Button
            MaterialButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.red)
              ),
            height: 50,
            color: myColor,
            child: Text("Calculate", style: TextStyle(color: Colors.white, fontSize: 22),),
            onPressed: (){
setState(() {
               result = (double.parse(p)*double.parse(t)*double.parse(r) /100).toString();
  
});

            },),

            SizedBox(
              height: 8,
            ),

            Center(
              child: Text("The result is $result",style: TextStyle(fontSize: 22)),
            )

          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
