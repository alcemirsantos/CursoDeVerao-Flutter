import 'package:flutter/material.dart';
import 'package:quizzer/cerebro.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: QuizzPage(),
        ),
      ),
    ),
  );
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  Cerebro c = Cerebro();
  List<Icon> placar = [];

  void avisarTermino(BuildContext context) async {
    await Alert(
      style: AlertStyle(
          backgroundColor: Colors.black45,
          descStyle: TextStyle(color: Colors.white)),
      context: context,
      type: AlertType.success,
      title: "iCEV Quizz",
      desc:
          'Você terminou de responder as questões disponíveis. Volteremos ao início!',
      buttons: [
        DialogButton(
          child: Text(
            'OK',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }

  void checarResposta(BuildContext context, bool respostaUsuario) {
    setState(() {
      if (c.gabarito == respostaUsuario)
        placar.add(Icon(Icons.check, color: Colors.green));
      else
        placar.add(Icon(Icons.clear, color: Colors.red));
      c.setProxima();
      if (c.ehOFim) {
        placar = [];
        avisarTermino(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                c.enunciado,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              height: 20,
              color: Colors.green,
              onPressed: () => checarResposta(context, true),
              child: Text(
                'SIM',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () => checarResposta(context, false),
              child: Text(
                'NÃO',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          children: placar,
        ),
      ],
    );
  }
}
