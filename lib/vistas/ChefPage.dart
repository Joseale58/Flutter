import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/vistas/LoginPage.dart';
import 'package:menu_app/vistas/ReservaPage.dart';
import 'package:menu_app/vistas/OrdenPage.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'IndexPage.dart';

class ChefPage extends StatelessWidget {
  const ChefPage({Key? key}) : super(key: key);

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
                            width: 50,
                          ),
                          Icon(
                            Icons.account_box_sharp,
                            size: MediaQuery.of(context).size.width * 0.1,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(children: [
                            Text("Chef ID: XXX"),
                            Text("Ordenes pendientes: XXX")
                          ])
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topLeft,
                      child: MyIconButton(() {
                        //Aqui irá nuestra función de Sign In
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return IndexPage();
                            },
                          ),
                        );
                      }, Icon(Icons.arrow_back, size: 40), 60, 300),
                      height: 60,
                      width: 300,
                    ),
                    Container(
                      margin: new EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: Titulo(
                        "Company Name",
                        MediaQuery.of(context).size.width * 0.08,
                      ),
                    ),
                    SizedBox(height: 30),
                    Orden(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OrdenPage();
                          },
                        ),
                      );
                    },
                        "11",
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.15,
                        Colors.blue,
                        Colors.orange),
                    Container(
                      height: 10,
                    ),
                    Orden(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OrdenPage();
                          },
                        ),
                      );
                    },
                        "12",
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.15,
                        Colors.grey,
                        Colors.yellow),
                    Container(
                      height: 10,
                    ),
                    Orden(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OrdenPage();
                          },
                        ),
                      );
                    },
                        "13",
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.15,
                        Colors.blue,
                        Colors.orange),
                    Container(
                      height: 10,
                    ),
                    Orden(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OrdenPage();
                          },
                        ),
                      );
                    },
                        "14",
                        MediaQuery.of(context).size.width * 0.55,
                        MediaQuery.of(context).size.height * 0.15,
                        Colors.grey,
                        Colors.yellow)
                  ],
                )))));
  }
}
