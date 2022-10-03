// ignore_for_file: prefer_const_constructors, null_check_always_fails, no_leading_underscores_for_local_identifiers, dead_code, sort_child_properties_last, duplicate_ignore, unused_element, unused_local_variable

import 'package:flutter/material.dart';

class UserPages extends StatelessWidget {
  const UserPages({super.key});

  @override
  Widget build(BuildContext context) {
    var _itemHeader = TextStyle(
      color: Colors.grey.shade600,
      fontSize: 16.0,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Promocionor algún paqute de viajes para que ganes dinero.   "
                  "Más información"),
            ),
            _buildTitle("Configuracion de la cuenta"),
            ListTile(
              onTap: () {},
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey.shade400,
              ),
              title: Text('Informacion Personal'),
            ),
            SizedBox(height: 20.0),
            _buildTitle("Proporcionar Lugares Turisticos"),
            ListTile(
              onTap: () {},
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey.shade400,
              ),
              title: Text('Anuncia una nueva Experiencia'),
            ),
            SizedBox(height: 20.0),
            _buildTitle("Asistencias"),
            ListTile(
              onTap: () {},
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey.shade400,
              ),
              title: Text('Como funciona Ximbal'),
            ),
            SizedBox(height: 20.0),
            ListTile(
              onTap: () {},
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey.shade400,
              ),
              title: Text('Como puedes ayudar a reforestar el planeta'),
            ),
            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "ximbal@ximbal.com.mx",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "9514940433",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  ListTile _buildExperienceRow({required String company}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          Icons.solar_power_outlined,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
      ),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        // ignore: sized_box_for_whitespace
        Container(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage(
                        'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png'[
                            4])))),
        SizedBox(width: 20.0),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "Israel Merlyn",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Josue Vasquez Martinez"),
            SizedBox(height: 5.0),
          ],
        )
      ],
    );
  }
}
