import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _creatItemsCorta()

      ),
    );
  }

  List<Widget> _creatItems(){
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _creatItemsCorta(){

    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            subtitle: Text('asdasd'),
            title: Text(item + '!'),
            leading: Icon(Icons.accessible_forward),
            trailing: Icon(Icons.account_circle),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }

}