import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Conversor de Temperatura'),

      ) ,

      body:
        Container(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,

                children:[
                  Text('Digite a Temperatura',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize:35.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffffffff),
                        fontFamily: "Roboto"
                    ),
                  ),

                  TextField(
                    keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                      //controller: tempVal,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Temperatura'),
                      style: TextStyle(fontSize:32.0,
                        color: const Color(0xFF9C1313),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  )

                ]
            ),
        ),

    );
  }
}
