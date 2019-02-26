import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {

  final IconData icon;
  final String text;
  final PageController controller;
  final int page;

  DrawerOptions(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          controller.jumpToPage(page);      
        },
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 0),
          height: 60,
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 32,
                color: controller.page.round() == page ?
                  Theme.of(context).primaryColor : Colors.black,
              ),
              SizedBox(width: 24),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: controller.page.round() == page ?
                  Theme.of(context).primaryColor : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}