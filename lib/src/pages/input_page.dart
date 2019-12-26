import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  List<String> _poderes =['volar','ola','text','asdasd'];

  String _opcionSeleccionada = 'volar';

  TextEditingController _inputfilDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('input de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
           _crearFecha(context),
          Divider(),
           _crearDropdown(), 
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre}'),
        hintText: 'Nombre de la persona',
        labelText: 'Solo es el nombre',
        suffixIcon:  Icon(Icons.accessible),
        icon: Icon(Icons.account_box)
      ),
      onChanged: (valor){
        print(_nombre);
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Email : $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _crearEmail() {
     return TextField(
       keyboardType: TextInputType.emailAddress,
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email',
        labelText: 'Solo es el nombre',
        suffixIcon:  Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor){
        print(_email);
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      //autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Solo es el nombre',
        suffixIcon:  Icon(Icons.lock_open),
        icon: Icon(Icons.looks)
      ),
      onChanged: (valor){
        setState(() {
         
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputfilDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon:  Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_view_day)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2025),
      locale:Locale('es','ES')
    );

    if (picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputfilDateController.text = _fecha;
      });
    }

  }

  List <DropdownMenuItem<String>> getOpcionesDropbown(){
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
            Icon(Icons.select_all),
            SizedBox(width: 30.0),
            Expanded(
              child: DropdownButton(
              value: _opcionSeleccionada,
              items: getOpcionesDropbown(),
              onChanged: (opt){
                setState(() {
                  _opcionSeleccionada = opt;
                });
              },
          ),
            )
      ],
    );
    
    

  }
}