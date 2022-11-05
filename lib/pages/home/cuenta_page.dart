
import 'package:flutter/material.dart';
import 'package:xinbal/pages/home/settings_page.dart';

class CuentaScreen extends StatelessWidget {
   
  const CuentaScreen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

  // TextStyle fontSizeTitulo = const TextStyle(fontSize: 20);
  // TextStyle fontSizeTexto = const TextStyle(fontSize: 15);



    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
      bottom: PreferredSize(
      child: Container(
         color: Colors.grey,
         height: 0.0,
      ),
      preferredSize: Size.fromHeight(-60.0)),
      backgroundColor: Color.fromARGB(0, 255, 255, 255),

      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 30, left: 30),
        children: [
          const SizedBox(height: 70,),


          const Text('Cuenta',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500,
          ),),

          const SizedBox(height: 40,),

          ListTile(
            contentPadding: EdgeInsets.only(right: 30),
            title: Text('Ximbal es un proyecto que tiene como meta reforestar el planeta tierra ¿Quieres saber cómo?',
            style: TextStyle(
              fontSize: 15,
            ),),
            subtitle: const Text('Ver más',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),),
            onTap: (){},
          ),

          const Divider(),
          const SizedBox(height: 30),

          //ES DE DEJAR SUGERENCIA
          const Text('Configuracion',
            style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configuracion Usuario'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPages()));
            },
          ),
          const Divider(),
          const SizedBox(height: 30),

          //ES DE DEJAR SUGERENCIA
         const Text('Dejar una sugerencia',
            style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),

          ListTile(
            leading: const Icon(Icons.note_add_rounded),
            title: const Text('Dejar una sugerencia'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){},
          ),
          const Divider(),









          
          const SizedBox(height: 30,),






//PROMOCIONAR LUGARES TURÍSTICOS
          const Text('Promocionar lugares turísticos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),),
          ListTile(
            leading: const Icon(Icons.spatial_audio_off_outlined),
            title: const Text('Anuncia una nueva experiencia'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){},
          ),
          const Divider(),








          const SizedBox(height: 30,),










        const Text('Sobre ximbal y el ambiente',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),),
                ListTile(
          leading: const Icon(Icons.question_mark_sharp),
          title: const Text('Qué es ximbal'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: (){},
        ),
        const Divider(),
                ListTile (
          leading: const Icon(Icons.handshake),
          title: const Text('Donar para la reforestación'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: (){},
        ),
        const Divider(),
                ListTile(
                  leading: const Icon(Icons.priority_high_sharp),
          title: const Text('A donde se van los recursos recaudados'),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: (){},
        ),
        const Divider(),




       const SizedBox(height: 30,),





      const Text('Legal',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),),
      ListTile(
        title: const Text('Términos y condiciones'),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        leading: const Icon(Icons.integration_instructions),
        onTap: (){},
      ),

      const Divider(),

      ListTile(
        leading: const Icon(Icons.policy_rounded),
        title: const Text('Políticas y privacidad'),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: (){},
      ),




      const SizedBox(height: 50,),



      const Text('VERSIÓN 1.0.0'),
      const SizedBox(height: 90,),

//language_sharp


        ],
      ),


    );
  }
}