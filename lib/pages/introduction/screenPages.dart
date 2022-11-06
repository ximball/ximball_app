import 'package:flutter/material.dart';
import 'dart:math';

import 'package:xinbal/pages/home/bottom_home_pages.dart';
class ScreenPages extends StatefulWidget {
  const ScreenPages({super.key});

  @override
  State<ScreenPages> createState() => _ScreenPagesState();
}

class _ScreenPagesState extends State<ScreenPages> {
   // var
  final PageController _controller = PageController(initialPage:0);  
  Color colorFondo=Color.fromARGB(255, 255, 255, 255).withOpacity(.2);
  Color colorAccent=Colors.white;
  List<Widget> _pages =[] ;
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _pages=[
      pageInformacion(
        context:context,colorIcon: colorAccent,
        iconData: Icons.terrain_rounded,
        titulo:"Ximball",
        subtitulo:"Ximbalemos mientras.\nAyudamos al planeta tierra,mientras estaremos trabajando en el estado de Oaxaca."),

      pageInformacion(context:context,colorIcon: colorAccent,
      iconData: Icons.block_sharp,
      titulo:"Ayudanos a Reforestar",
      subtitulo:"Nuestro Objetivo es donar el 80% de los beneficios obtenidos."),

      pageInformacion(context:context,colorIcon: colorAccent,
      iconData: Icons.travel_explore_rounded,
      titulo:"Ximball",
      subtitulo:"Siempre Ayudaremos a reforestar los lugares que mas lo necesiten.\nEse sera siempre nuestro objetivo."),
      
      pageButton(

        context:context,color:Colors.green,texto: "Bienvenido a Ximball" ,
        textoButton: "Inicio" ,colorText: colorAccent,
        
      
      ),
    ];
    colorFondo=Theme.of(context).brightness==Brightness.dark?Color(0xFFA7F5BA).withOpacity(.2):Color.fromARGB(255, 151, 255, 179).withOpacity(.2);
    
    return Scaffold(
      backgroundColor: colorFondo,
      body: body(),
      floatingActionButton: dotsIndicator(pageController: _controller,pages: _pages),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  /// WIDGETS
  Widget body(){
    return PageView( // Una lista desplazable que funciona página por página. */
        controller: _controller,  //  El initialPageparámetro establecido en 0 significa que el primer elemento secundario del widget PageViewse mostrará primero (ya que es un índice basado en cero) */
        pageSnapping: true, // Deslizaiento automatico */
        scrollDirection: Axis.horizontal, // Dirección de deslizamiento */
        children: _pages,
    );
  }
  // WIDGETS COMPONENT
  Widget dotsIndicator({  required PageController pageController,required List pages}){
    return DotsIndicator(
      color: colorAccent,
      controller: pageController,
      itemCount: pages.length,
      onPageSelected: (int page) {pageController.animateToPage(page,duration: const Duration(milliseconds: 300),curve: Curves.ease);},
      );
  }
  Widget pageInformacion({
    required BuildContext 
    context,
    IconData ?iconData,
     Color colorIcon=Colors.white,
     Color colorText=Colors.white, 
     required String titulo,
    String subtitulo=""}) {
    // Devuelve una vista con contenido centrado 
    
    // Definimos los estilos
    final estiloTitulo = TextStyle(
      fontSize: 30.0, fontWeight: FontWeight.bold,color: colorText
    );
    final estiloSubTitulo = TextStyle(
      fontSize: 20.0,color: colorText.withOpacity(0.5)
    );
    
    // Obtenemos las vavriables de la dimension de la pantalla */
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              iconData!=null?Container(width: screenSize.width / 2,height: screenSize.height / 2,child:Icon(iconData,size: screenSize.width*0.25,color: colorIcon)):Container(),
              Text(titulo,style: estiloTitulo,textAlign: TextAlign.center),
              SizedBox(height: 12.0),
              Text(subtitulo,style: estiloSubTitulo,textAlign: TextAlign.center),
              SizedBox(height: 12.0),
              Expanded(child: Container()),
            ],
          ),
    ));
  }
  Widget pageButton({
    
    required BuildContext context,required String texto,required String textoButton,MaterialColor color=Colors.blue,Color colorText=Colors.white}) {
    // Devuelve una vista con un boton central */
   
    

  
    final TextStyle estiloTitulo = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: colorText);
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(onPrimary: color,primary: color[300],shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))));
    
    return Container(
      width: double.infinity,height: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(vertical: 24),child: Text(texto,style: estiloTitulo,textAlign: TextAlign.center)),
            ElevatedButton(
              style:raisedButtonStyle,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),child: Text(textoButton, style: TextStyle(fontSize: 20.0,color: colorText))),
              onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> BHomePages(),),),
            ),
          ],
        ),
      ),
    );
  }
}

/// Un indicador que muestra la página actualmente seleccionada de un PageController
class DotsIndicator extends AnimatedWidget {
  DotsIndicator({required this.controller,required this.itemCount,required this.onPageSelected,this.color: Colors.white}) : super(listenable: controller);
  // El PageController que representa este DotsIndicator.
  final PageController controller;
  // La cantidad de elementos administrados por PageController
  final int itemCount;
  // Llamado cuando se toca un punto
  final ValueChanged<int> onPageSelected;

  // El color de los puntos.
  // Defaults to `Colors.white`.
  final Color color;
  // El tamaño base de los puntos
  static const double _kDotSize = 8.0;
  // El aumento en el tamaño del punto seleccionado.
  static const double _kMaxZoom = 2.0;
  // La distancia entre el centro de cada punto
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index  ) {

    double selectedness = Curves.easeOut.transform(max(0.0,1.0 - ((controller.hasClients ?controller.page??0:controller.initialPage ) - index).abs()));
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;

    return new Container(
      width: _kDotSpacing,height: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(onTap: () => onPageSelected(index) ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
