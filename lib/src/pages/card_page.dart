import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        //padding: EdgeInsets.symmetric(horizontal:50.0,vertical:10.0),
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardtipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardtipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardtipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardtipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
    
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0, //Sombra de la tarjeta
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android,color: Colors.brown,),
            title: Text('Titulo'),
            subtitle: Text('Segunda mini tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                  
                },
              )
          ],)
        ],
      ),
    );
  }

  Widget _cardtipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('http://t1.gstatic.com/images?q=tbn:ANd9GcQB8djpK4vhigNWM9gDgm1lwLdKNjFl4Liv9ImaebUM2e28sfAIL_STZ6J2QELtazyPP-2daYtuAzMY-zG-62w'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          /* Image(
            image: NetworkImage('http://t1.gstatic.com/images?q=tbn:ANd9GcQB8djpK4vhigNWM9gDgm1lwLdKNjFl4Liv9ImaebUM2e28sfAIL_STZ6J2QELtazyPP-2daYtuAzMY-zG-62w'),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Text')
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10.0,
            color: Colors.black26,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}