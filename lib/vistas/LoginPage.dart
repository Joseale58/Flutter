import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_app/vistas/ChefPage.dart';
import 'package:menu_app/widgets/wdsFunc.dart';

import 'IndexPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              Spacer(
                flex: 1,
              ),
              Titulo(
                "Company Name",
                MediaQuery.of(context).size.width * 0.1,
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  MyIconButton(() {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return IndexPage();
                        },
                      ),
                    );
                  }, Icon(Icons.arrow_back, size: 40,), 60, 40),
                  SizedBox(
                    width: 50,
                  ),
                  SubTitulo("Iniciar sesión", 40),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "User",
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              Spacer(),
              LargeButton(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ChefPage();
                      },
                    ),
                  );
                },
                "Iniciar sesión",
                Color(0xFFF2522E),
                MediaQuery.of(context).size.width * 0.8,
                MediaQuery.of(context).size.width * 0.1,
              ),
              Spacer(),
              SubTitulo("¿Olvidó su contraseña?", 16),
              Spacer(flex: 2),
            ],
          )),
    ));
  }
}
