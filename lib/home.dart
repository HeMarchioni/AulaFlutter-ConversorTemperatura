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

  int _radioValue1 = 0;
  var valorConvert = "top demais";



  void _handleRadioValueChange1(int? value) {
    setState(() {
      _radioValue1 = value!;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children:[

          // -> ================================================== Texto Principal

          Text('Digite a Temperatura',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize:35.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xffffffff),
                fontFamily: "Roboto"
            ),
          ),





          // ==============================================================-> Entrada de valor


          Padding(
              padding: const EdgeInsets.fromLTRB(50,10,50,10),
              child:
              TextField(
                keyboardType: TextInputType.number,  // -> teclado que ira aparecer para inserir na caixa de texto input
                //controller: tempVal,
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
                  onChanged: _handleRadioValueChange1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,30,0),
                  child: new Text(
                    'Celsius °C',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                ),
                new Radio(
                  value: 1,
                  groupValue: _radioValue1,
                  onChanged: _handleRadioValueChange1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,30,0),
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
                  onChanged: _handleRadioValueChange1,
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
                  title: Text(''),
                  leading: Icon(Icons.arrow_forward),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,10,10),
                child: ListTile(
                  title: Text(''),
                  leading: Icon(Icons.arrow_forward),
            ),
          ),
            ],
          ),


        ]
    );

  }
}















