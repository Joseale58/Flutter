import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'ChefPage.dart';
import 'IndexPage.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Titulo("CompanyName", 40),
            Container(
              height: 30,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xFFF2AC57),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      // ignore: sort_child_properties_last
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
                      }, Icon(Icons.arrow_back, size: 30), 60, 300),
                      height: 60,
                      width: 300,
                    ),
                    Container(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                        ),
                        Text("Elementos agregados:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),
                        Container(
                          height: 20,
                        ),
                        Text("- 1 X Menú # X"),
                        Text("- 2 X Bebidas # X"),
                    ],),
                    Container(
                          height: 30,
                        ),
                    LargeButton((){}, "Confirmar, proceder pago", Color(0xFF8EFA99), 250, 40),
                    Container(
                          height: 20,
                        ),
                    LargeButton((){}, "Limpiar", Color(0xFFF2884B), 250, 40),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
