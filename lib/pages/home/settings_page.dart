// ignore_for_file: prefer_const_constructors, duplicate_ignore, must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:xinbal/pages/home/cuenta_page.dart';
import 'package:xinbal/pages/home/user_page_NOUTILIZAR.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({super.key});

  @override
  State<SettingPages> createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  late bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        brightness: _getBrightness(),
        iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
        backgroundColor: Colors.transparent,
        title: Text(
          'Configuracion',
          style: TextStyle(color: _dark ? Colors.white : Colors.black),
        ),
        //acciones para modo oscuro
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _dark = !_dark;
            },
            icon: Icon(Icons.abc),
          )
        ],
      ),
      
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Color.fromARGB(255, 10, 10, 10),
        ),
        
        child: DefaultTextStyle(
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
        
                Row(
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 63, 63, 63),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png'[
                                  1]),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Color.fromARGB(255, 2, 2, 2),
                          width: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(height: 20.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // ignore: prefer_const_constructors
                          Text(
                            "Josue Vasquez",

                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "Heroica Ciudad de Tlaxiaco",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  title: Text(
                    "Configuracion",
                    // style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "Datos de la cuenta",
                    //style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserPages()));
                  },
                ),
                ListTile(
                  title: Text(
                    "Verificacion de Cuenta",
                    //style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "Necesario Verificar",

                    //style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text(
                    "Notificaciones",
                    //style: whiteBoldText,
                  ),
                  value: true,
                  onChanged: (val) {},
                ),
                ListTile(
                  title: Text(
                    "Ayuda",
                    //style: whiteBoldText,
                  ),
                  subtitle: Text(
                    "Acerca De",
                    //style: greyTExt,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Terminos y Condiciones",
                    //style: whiteBoldText,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Politica de Privacidad",
                    //style: whiteBoldText,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Enviar comentarios",
                    //style: whiteBoldText,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Mas Informacion",
                    //style: whiteBoldText,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Salir",
                    // style: whiteBoldText,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
