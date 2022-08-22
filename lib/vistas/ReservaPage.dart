import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'IndexPage.dart';

class ReservaPage extends StatelessWidget {
  const ReservaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromARGB(15, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
        child: Column(
          children: [
           Spacer(flex: 1,),
           Titulo("Company Name", MediaQuery.of(context).size.width*0.1,),
           Spacer(flex: 1,),
           
              Row(
              children: [
                Container(
                  width: 40,
                ),
                MyIconButton(() {
                        //Aqui irá nuestra función de Sign In
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return IndexPage();
                            },
                          ),
                        );
                      }, Icon(Icons.arrow_back), 60, 60),
                SizedBox(
                  width: 30
                ),
                Text("Cambiar sede: ",  style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03)),
                Text("(Actual Laures) ",  style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.03, color: Colors.blue)),
              ],
            ),
           Text("Reservar",
           style: TextStyle(fontSize: 40)),
           Spacer(),
           SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre de la reserva",
                  ),
                ),
              ),
           SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cédula",
                  ),
                ),
              ),
           SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Número",
                  ),
                ),
              ),
           SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Número de personas",
                  ),
                ),
              ),
           SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Fecha/hora",
                  ),
                ),
              ),
           Spacer(),
           LargeButton((){},"Reservar", Color(0xFFF2522E), MediaQuery.of(context).size.width*0.8, MediaQuery.of(context).size.width*0.1,),
           Spacer(),
           Spacer(flex:2),
        ],)
      ),
      )
      ); 
  }
}