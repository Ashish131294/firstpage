
import 'package:firstpage/secondpages.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: demo(),));
}
class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("First Page"),
    ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          int id=1;
          String name="Ashish";
          bool voter= false;
          List<String> address=["401","Sarita Darshan"];

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return secondpage(id,name,voter,address);
          },));
        }, child: Text("call second")),
      ),
    );
  }
}
