import 'package:flutter/material.dart';
import 'custom_types.dart';

class CustomCard extends StatefulWidget {

  final Types type;

  const CustomCard(
    this.type,{
    super.key,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  late final String title;
  late final String subtitle;
  late final IconData leading;
  late final IconData trailing;

  void createCustomText(){
    switch(widget.type){
      case Types.phone:
        title = "Phone";
        subtitle = "+972-59-888-1177";
        leading = Icons.phone_iphone;
        trailing = Icons.phone;
        break;
      case Types.email:
        title = "Email";
        subtitle = "ahmeeed.lulu@gmail.com";
        leading = Icons.email;
        trailing = Icons.send;
        break;
      case Types.location:
        title = "Location";
        subtitle = "Palestine - Gaza";
        leading = Icons.map;
        trailing = Icons.location_on;
        break;
    }
  }
  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$title: $subtitle",style: const TextStyle(color: Colors.black)),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    createCustomText();
    return Card(
      child: ListTile(
        leading: Icon(leading),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: ()=> showSnackBar(), icon: Icon(trailing)),
      ),
    );
  }
}

