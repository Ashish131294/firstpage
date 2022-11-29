import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  int id;
  String name;
  bool voter;
  List<String> address;
  
  
  secondpage(this.id,this.name,this.voter,this.address);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  int? id;
  String? name;
  bool? voter;
  List<String>? address;


  @override
  void initState() {
    super.initState();
    id= widget.id;
    name=widget.name;
        voter=widget.voter;
        address=widget.address;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Second Page"),),
    body: Column(
      children: [
        Text("${id}"),
        Text(name!),
        Text("${address}"),
      ],
    ),
    );
  }
}
