import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
  late final Uri link;

  void createCustomText(){
    switch(widget.type){
      case Types.phone:
        title = "Phone";
        subtitle = "+972-59-888-1177";
        leading = Icons.phone_iphone;
        trailing = Icons.phone;
        link = Uri.parse("tel:$subtitle");
        break;
      case Types.email:
        title = "Email";
        subtitle = "ahmeeed.lulu@gmail.com";
        leading = Icons.email;
        trailing = Icons.send;
        link = Uri.parse("mailTo:$subtitle");
        break;
      case Types.website:
        title = "Website";
        subtitle = "https://linktr.ee/ahmedhlulu";
        leading = Icons.web;
        trailing = Icons.open_in_browser;
        link = Uri.parse(subtitle);
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
        trailing: IconButton(onPressed: ()=> launchUrl(link), icon: Icon(trailing)),
      ),
    );
  }
}
// For external browser we use =>
// trailing: IconButton(onPressed: ()=> launchUrl(link,mode: LaunchMode.externalApplication), icon: Icon(trailing)),

