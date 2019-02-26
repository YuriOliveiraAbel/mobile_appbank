import 'package:flutter/material.dart';
import 'package:mob_appbank/drawer/drawer_widget.dart';
import 'package:mob_appbank/home/home_options.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            title: Text('APP BANK',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              FlatButton(
                child: Icon(Icons.close, color: Colors.white)
              )
            ],
          ),
          drawer: CustomDrawer(_pageController),
          body: GridView.builder(
            padding: EdgeInsets.all(4),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0.5,
              crossAxisSpacing: 0.5,
              childAspectRatio: 1, 
            ),
            itemCount: 10,
            itemBuilder: (context, index){
              return HomeOptions();
            }
          )
        )
      ],
    );
  }
}