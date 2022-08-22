import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/vistas/ChefPage.dart';
import 'package:menu_app/vistas/DishPage.dart';
import 'package:menu_app/vistas/LoginPage.dart';
import 'package:menu_app/vistas/ReservaPage.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'CarritoPage.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    Container(
                      margin: new EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.025),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          MyIconButton(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          },
                              Icon(
                                Icons.account_box,
                                size: 50,
                              ),
                              50,
                              50),
                          Spacer(),
                          MyIconButton(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CarritoPage();
                                },
                              ),
                            );
                          },
                              Icon(
                                Icons.shopping_cart_rounded,
                                size: 50,
                              ),
                              50,
                              50),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: new EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Titulo(
                        "Company Name",
                        MediaQuery.of(context).size.width * 0.08,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: new EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.025),
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(
                            Icons.menu,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(width: 30),
                          Text("Cambiar sede: ",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.03)),
                          Text("(Actual Laures) ",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.03,
                                  color: Colors.blue)),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReservaPage();
                              },
                            ),
                          );
                        },
                        child: Text("Reservar ahora",
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                    SizedBox(height: 30),
                    Titulo(
                      "Platos",
                      MediaQuery.of(context).size.width * 0.07,
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 1",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFFF2522E),
                            "/bandeja.jpg", () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 2",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFFF2522E),
                            "/bandeja.jpg", () {
                          //Aqui irá nuestra función de Sign In
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    Container(
                      height: 10,
                    ),
                    Titulo(
                      "Bebidas",
                      MediaQuery.of(context).size.width * 0.07,
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 1",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFF59D9D9),
                            "/bebida.jpg", () {
                          //Aqui irá nuestra función de Sign In
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 2",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFF59D9D9),
                            "/bebida.jpg", () {
                          //Aqui irá nuestra función de Sign In
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    Container(
                      height: 10,
                    ),
                    Titulo(
                      "Postres",
                      MediaQuery.of(context).size.width * 0.07,
                    ),
                    Container(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 1",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFFF2CB57),
                            "/postre.png", () {
                          //Aqui irá nuestra función de Sign In
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OpcionMenu(
                            "Plato 2",
                            MediaQuery.of(context).size.width * 0.7,
                            MediaQuery.of(context).size.height * 0.25,
                            Color(0xFFF2CB57),
                            "/postre.png", () {
                          //Aqui irá nuestra función de Sign In
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DishPage();
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                )))));
  }
}
