import 'package:flutter/material.dart';

GestureDetector LargeButton(
    VoidCallback funcion, String text, Color colour, double x, double y) {
  return GestureDetector(
      onTap: (funcion),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ));
}

GestureDetector MyIconButton(
    VoidCallback funcion, Icon icono, double x, double y) {
  return GestureDetector(
      onTap: (funcion),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: icono),
      ));
}

Text Titulo(String text, double tamano) {
  return Text(
    text,
    style: TextStyle(
        fontSize: tamano,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),
  );
}

Text SubTitulo(String text, double tamano) {
  return Text(text,
      style: TextStyle(fontSize: tamano, fontWeight: FontWeight.w300),
      textAlign: TextAlign.center);
}

Container OpcionMenu(String texto, double ancho, double alto, Color color,
    String ruta, VoidCallback funct) {
  return Container(
    padding: EdgeInsets.all(5),
    width: ancho,
    height: alto,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: funct,
      child: Row(
        children: [
          SizedBox(
            width: ancho * 0.8,
            height: alto * 0.8,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: alto * 0.2,
                    )),
                    Titulo(texto, ancho * 0.1),
                    SubTitulo("Descripción", 16)
                  ],
                ),
                Spacer(),
                Image(image: AssetImage(ruta), height: alto * 0.43)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//Función que devuelve elemento container para vista Chef

Container Orden(VoidCallback funcion, String nro_orden, double ancho, double alto, Color color, Color color_inter) {
  return Container(
    width: ancho,
    height: alto,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: () {},
      child: Column(
        children: [
          Spacer(),
          Text("Orden #: "+ nro_orden),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color_inter),
            ),
            onPressed: funcion,
             child: Text("Ver orden")
             ),
          Spacer(),
          Text("Tiempo: XX minutos"),
          Spacer(),
      ],)
    ),
  );
}
