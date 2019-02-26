import 'package:flutter/material.dart';

class HomeOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),       
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,//Imagem esticada
          mainAxisAlignment: MainAxisAlignment.start,//Para fica no inico do card
          children: <Widget>[
            Expanded(//pega todo o espaço disponivel
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 228, 188, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0)
                  )
                ),               
                padding: EdgeInsets.all(8),//define tamanho e local onde vai ter o padding               
                child: Text('Saldo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor
                  ),
                  textAlign: TextAlign.center,
                ),                
              ),
            ),
            AspectRatio(
              aspectRatio: 1.30,//define formato da imagem 
              child: Icon(
                Icons.attach_money,
                size: 66,
                color: Theme.of(context).primaryColor,
              )
            ),
          ],
        )
      )
    );
  }
}
