import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'IndexPage.dart';

class DishPage extends StatelessWidget {
  const DishPage({Key? key}) : super(key: key);

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
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: MyIconButton(() {
                        //Aqui irá nuestra función de Sign In
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return IndexPage();
                            },
                          ),
                        );
                      }, Icon(Icons.arrow_back), 60, 300),
                      height: 60,
                      width: 300,
                    ),
                    Text(
                      "Nombre Plato",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage("/bandeja.jpg"),
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    Container(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                          "Descripción. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices lacus lectus, ut faucibus arcu ullamcorper vitae. Cras nec egestas nisi."),
                    ),
                    Container(
                      height: 20,
                    ),
                    Text("Precio: XXXX",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
