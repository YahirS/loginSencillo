import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Master Sanchez',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin de material app
  } // fin de widget
} // fin de class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} // fin class IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], // fin accion widget[]
        title: Text('Ingresa al sistema'),
      ), //fin de appbar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 10.0),
            Column(
              children: <Widget>[
                Image.asset('assets/image16.jpg'),
                SizedBox(height: 12.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.greenAccent,
                      labelText: 'Nombre de usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.greenAccent,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCEL'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            'SIGUIENTE',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), // fin de RaisedButton
                      ], // fin widget
                    ), // fin de child
                  ) // fin de paddig
                ], // fin de widget
              ) // fin columna
            //fin de if verdade
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('YAY, Estoy ingresado'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Cerrar sesion'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    )
                  ], // fin de ninos widget
                ),
              ) //fin de if falso
          ], // fin de children widget
        ), // fin de body
      ), // fin de Safearea
    ); // fin de Scaffold
  } //fin de widget
} // fin class _IngresoSistemaState
