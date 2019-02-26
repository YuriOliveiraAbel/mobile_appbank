import 'package:flutter/material.dart';
import 'package:mob_appbank/drawer/drawer_options.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Drawer(
        child: ListView(
          children: <Widget>[
             DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, top: 25),
                    child: Text('BANK',
                      style: TextStyle(
                        color: Color.fromRGBO(230, 228, 188, 1),
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Yuri',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text('Conta: 1058452  Agencia: 1401',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )    
                      ],
                    ),
                  )                 
                ],
              ),
              decoration:  BoxDecoration(
                  color: Theme.of(context).primaryColor
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Saldo:',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      'Saldo Disponível:',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                )  
              ],
            ), 
            Divider(),
            DrawerOptions(Icons.attach_money, 'Saldo', pageController, 0),
            DrawerOptions(Icons.payment, 'Pagamentos', pageController, 1),
            DrawerOptions(Icons.note, 'Extrato', pageController, 2),
            DrawerOptions(Icons.cached, 'TransferÊncias', pageController, 3),
            DrawerOptions(Icons.calendar_today, 'Comprovantes', pageController, 4),
            DrawerOptions(Icons.attach_money, 'Crédito', pageController, 5),
            DrawerOptions(Icons.table_chart, 'Agendamentos', pageController, 6),
            DrawerOptions(Icons.chat_bubble, 'Previdência', pageController, 7),
            DrawerOptions(Icons.credit_card, 'Investimentos', pageController, 8),
            DrawerOptions(Icons.grade, 'DARF/GPS', pageController, 9),
            DrawerOptions(Icons.attach_money, 'Configurações', pageController, 10)
          ],
        )
      )
    );
  }
}