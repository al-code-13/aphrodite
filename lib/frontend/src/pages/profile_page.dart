import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double _sigmaX = 0.0; // from 0-10
  double _sigmaY = 0.0; // from 0-10
  double _opacity = 0.5; // from 0-1.0
  TextStyle subtitle = TextStyle(color: Colors.orange[400]);
  final talent = Perfil(
    name: 'Modelo Gaby Quiroz',
    information:
        'La Modelo Gaby Quiroz es Diseñadora y confesionista de ropa, Estudiante de comunicación social y periodismo, Modelo profesional con experiencia en fotografía y pasarela , actuación y comerciales  . me identifico con la Puntualidad, responsabilidad, y la buena actitud ante cualquier situación.',
    age: '24',
    height: '1.68',
    bust: '86',
    waist: '65',
    hip: '91',
    city: 'Bogota villeta',
    exp: {
      'Reinados':
          'Reina de la panela reina 2015\nReina Nacional de los caballistas\nVirreina Departamental de la panela y la caña.',
      'Modelaje':
          'experiencia en protocolo de 3 años con diferentes marcas BTL, lanzamientos de marcas ,impulsación, acompañamiento, entrega de premios, toma de datos y publicidad de diferentes marcas. torneos de golf, tennis, fútbol, crossfit. Congresos médicos y ontológicos. Experiencia en feria es de aproximadamente 10 como feria del Auto, Agroexpo, Expoconstructores, Andinapac, alimentec ,Anato, madera eh Indistria MM, belleza, Entre otras. Experiencia en fotografía: Fotos para la marca de ropa Los vestidos, Fotos para la Cadena de Hoteles Villeta Resort y boutique resort, Fotos para cadena de muebles DEKO Modern Design, Comercial Vogue maquillaje, Fotos para casa de novias vestidos de novias, fotos eh imagen apra la marca petacchi ropa interior, fotos para la clínica odontología salud vitral, fotos eh imagen para Buses Bolivariano. Vídeo musical para oscar Rodriguez.',
      'Fotografía':
          'fotos para la marca de ropa los vestidos,\nfotos para una cadena de hoteles villeta resort y boutique resort\nfoto para marca de muebles deko modern design”',
      'Presentación':
          'presentadora del canal regional gualiva Señal villeta Dulce, presentadora de evento Dia nacional de la madre por cinevi.',
      'Televisión': 'Vídeo musical para oscar Rodriguez.'
    },
    aptitude: [
      '-Pasarela Ropa Interior',
      '-Protocolo',
      '-Pasarela Ropa Exterior',
      '-Actuación Figurante',
      '-Actuación Extra',
      '-Modelo de Body Painting',
      '-Modelo de Fotografía',
      '-Presentación de Eventos',
    ],
    training: [
      '-Comunicadora social y periodista (en curso) – Politécnico Gran Colombiano.',
      '-Académica martha ines  Diseño corte y confección de ropa,',
      '-Cursos de fotografía para vestido de baño y ropa interior, ropa y de moda de alta costura, Curso de pasarla.'
    ],
    gallery: [
      
    ],
    bookAndEvents: [
      'https://i1.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-6-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-7-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i1.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-8-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-9-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i1.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-10-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-11-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-12-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i1.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-13-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-14-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-15-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-16-italentt-.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-18-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-2-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-3-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-4-italentt.jpeg?resize=150%2C150&ssl=1',
      'https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-5-italentt.jpeg?resize=150%2C150&ssl=1',
    ],
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController _pagina = PageController(
      initialPage: 0,
    );
    GlobalKey _bottomNavigationKey = GlobalKey();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.transparent,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.power_input,
        //     ),
        //     onPressed: () {},
        //   )
        // ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: size.height / 3,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-9-italentt.jpeg?fit=640%2C480&ssl=1'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                child: Container(
                  color: Colors.pinkAccent.withOpacity(_opacity),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            left: -size.width * 0.03,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(color: Colors.pink)),
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(0),
                  height: size.height,
                  width: size.width,
                  // color: Colors.blue
                  child: PageView(
                    onPageChanged: (v) {
                      final CurvedNavigationBarState navBarState =
                          _bottomNavigationKey.currentState;
                      navBarState.setPage(v);
                    },
                    controller: _pagina,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'Modelo Gaby Quiroz',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Experiencia : ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                                'La Modelo Gaby Quiroz es Diseñadora y confesionista de ropa, Estudiante de comunicación social y periodismo, Modelo profesional con experiencia en fotografía y pasarela , actuación y comerciales. Me identifico con la Puntualidad, responsabilidad, y la buena actitud ante cualquier situación.',
                                textAlign: TextAlign.justify),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      "Edad",
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.age),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      'Estatura : ',
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.height),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      'Busto : ',
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.bust),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      'Cintura : ',
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.waist),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: ListTile(
                                    title: Text(
                                      'Cadera : ',
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.hip),
                                  ),
                                ),
                                Flexible(
                                  child: ListTile(
                                    title: Text(
                                      'Ciudad de residencia : ',
                                      style: subtitle,
                                    ),
                                    subtitle: Text(talent.city),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'Modelo Gaby Quiroz',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Reinados: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "-Reina de la panela reina 2015\n-Reina Nacional de los caballistas \n-Virreina Departamental de la panela y la caña.",
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Modelaje: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Experiencia en protocolo de 3 años con diferentes marcas BTL, lanzamientos de marcas ,impulsación, acompañamiento, entrega de premios, toma de datos y publicidad de diferentes marcas. ",
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Fotografía: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                                "-Fotos para la marca de ropa los vestidos\n-Fotos para una cadena de hoteles villeta resort\n-Foto para marca de muebles deko modern design"),
                            SizedBox(height: 8),
                            Text(
                              'Presentación: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                                "-Presentadora del canal regional gualiva Señal villeta Dulce,\n-Presentadora de evento Dia nacional de la madre por cinevi.")
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Modelo Gaby Quiroz',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Aptitudes : ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Flexible(
                              child: ListView.builder(
                                  padding: EdgeInsets.all(0),
                                  itemCount: talent.aptitude.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Text(talent.aptitude[index]);
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              'Modelo Gaby Quiroz',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Formacion : ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: 400,
                              child: ListView.builder(
                                  padding: EdgeInsets.all(0),
                                  itemCount: talent.training.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Text(talent.training[index]);
                                  }),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        padding: EdgeInsets.only(top:50,left: 20,right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Galeria : ',
                               style: TextStyle(
                                fontSize: 24,
                                color: Colors.orange[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: GridView.count(
                                padding: EdgeInsets.all(0),
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                children: List.generate(
                                  
                                  talent.bookAndEvents.length,
                                  (index) {
                                    return Image.network(talent.bookAndEvents[index]);
                                  },
                                ),
                              ),
                            ),
                            // Text(
                            //   'Book y eventos : ',
                            //   style: TextStyle(
                            //     fontSize: 16,
                            //     color: Colors.orange[300],
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            // Container(
                            //   color: Colors.black,
                            //   height: 500,
                            //   margin: EdgeInsets.all(0),
                            //   padding: EdgeInsets.all(0),
                            //   child: GridView.count(
                            //     scrollDirection: Axis.vertical,
                            //     crossAxisCount: 2,
                            //     crossAxisSpacing: 8,
                            //     children: List.generate(
                            //       talent.bookAndEvents.length,
                            //       (index) {
                            //         return Image.network(
                            //             talent.bookAndEvents[index]);
                            //       },
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            left: MediaQuery.of(context).size.width * 0.08,
            child: CircleAvatar(
              maxRadius: 60,
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-21.jpg?fit=300%2C300&ssl=1"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.pink,
        items: <Widget>[
          Icon(Icons.info, size: 30,color: Colors.black54,),
          Icon(Icons.assessment, size: 30,color: Colors.black54,),
          Icon(Icons.lightbulb_outline, size: 30,color: Colors.black54,),
          Icon(Icons.school, size: 30,color: Colors.black54,),
          Icon(Icons.camera_enhance, size: 30,color: Colors.black54,),
        ],
        onTap: (index) {
          _pagina.jumpToPage(index);
        },
      ),
    );
  }
}

class Perfil {
  final String name;
  final String information;
  final String age;
  final String height;
  final String bust;
  final String waist;
  final String hip;
  final String city;
  final Map exp;
  final List aptitude;
  final List training;
  final List gallery;
  final List bookAndEvents;

  Perfil(
      {this.name,
      this.information,
      this.age,
      this.height,
      this.bust,
      this.waist,
      this.hip,
      this.city,
      this.exp,
      this.aptitude,
      this.training,
      this.gallery,
      this.bookAndEvents});
}
