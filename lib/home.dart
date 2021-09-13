import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Conversor de Temperatura'),

    ),

    body: const ConversorTemp(),
    );
  }
}






class ConversorTemp extends StatefulWidget {
  const ConversorTemp({Key? key}) : super(key: key);

  @override
  _ConversorTempState createState() => _ConversorTempState();
}

class _ConversorTempState extends State<ConversorTemp> {

  var tempV1 = '';
  var tempV2 = '';
  int _radioValue1 = 0;
  final TextEditingController entradaTemp = TextEditingController();



  void _selecaoRadio(int? value) {
    setState(() {
      _radioValue1 = value!;
    });
  }


  void coversor(){
    double temp = double.parse(entradaTemp.text);

    switch (_radioValue1) {
      case 0:  // -> se for celsius

        tempV1 = (1.8 * temp + 32).toStringAsFixed(2);
        tempV1+= " Graus Fahrenheit";

        tempV2 = (temp + 273.15).toStringAsFixed(2);
        tempV2+= " Graus Kelvin";

        break;

      case 1:  // -> se for Fahrenheit

        tempV1 = ((temp - 32) / 1.8).toStringAsFixed(2);
        tempV1+= " Graus Celsius";

        tempV2 = ((temp - 32) / 1.8 + 273.15).toStringAsFixed(2);
        tempV2+= " Graus Kelvin";

        break;

      case 2:  // -> se for Kelvin

        tempV1 = (temp - 273.15).toStringAsFixed(2);
        tempV1+= " Graus Celsius";

        tempV2 = ((temp - 273.15) *1.8 + 32).toStringAsFixed(2);
        tempV2+= " Graus Fahrenheit";

        break;
    }


  }




  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children:[

          // -> ================================================== Texto Principal

          Padding(
            padding: const EdgeInsets.fromLTRB(40,10,40,20),
            child: Text('Digite a Temperatura e Selecione a unidade de medida',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize:30.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffffffff),
                  fontFamily: "Roboto"
              ),
            ),
          ),





          // ==============================================================-> Entrada de valor


          Padding(
              padding: const EdgeInsets.fromLTRB(50,10,50,10),
              child:
              TextField(
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                controller: entradaTemp,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Temperatura'),
                style: TextStyle(fontSize:32.0,
                    color: const Color(0xFFDB9430),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              )
          ),





          //======================================================= -> Linha dos Radios Button

          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Radio(
                  value: 0,
                  groupValue: _radioValue1,
                  onChanged: _selecaoRadio,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,0),
                  child: new Text(
                    'Celsius °C',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Radio(
                  value: 1,
                  groupValue: _radioValue1,
                  onChanged: _selecaoRadio,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,20,0),
                  child: new Text(
                    'Fahrenheit °F',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                new Radio(
                  value: 2,
                  groupValue: _radioValue1,
                  onChanged: _selecaoRadio,
                ),
                new Text(
                  'kelvin K',
                  style: new TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),



          //===================================================== --> Botão Conversão

          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        coversor();
                        // Respond to button press
                      },
                      child: Text("CONVERTER"),
                    ),
                  ),
                ]
            ),
          ),


          //===================================================== --> Lista das respostas


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text('$tempV1'),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text('$tempV2'),
                  leading: Icon(Icons.arrow_forward),
            ),
          ),
            ],
          ),


        ]
    );

  }
}















