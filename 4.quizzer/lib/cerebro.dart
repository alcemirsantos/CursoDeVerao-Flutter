import 'package:quizzer/pergunta.dart';

class Cerebro {
  // o underscore(_) no inicio de variáveis as torna privadas.
  int _ultimaExibida = 0;
  List<Pergunta> _perguntas = [
    Pergunta('O Piauí é um estado do Brasil?', true),
    Pergunta('O Piauí é um estado da região nordeste?', true),
    Pergunta('É verdade que no Piauí é quente?', true),
    Pergunta('Existem 27 estados no Brasil?', false),
    Pergunta('Existem 26 estados e 1 distrito federal no Brasil?', true),
    Pergunta('Na matemática, o PI vale 3,15159?', false),
    Pergunta('Na matemática, o \'e\' vale 2,71828?', false),
    Pergunta('O poker é um jogo de tabuleiro?', false),
    Pergunta('O truco é um jogo de tabuleiro?', false),
    Pergunta('O poker é um jogo de cartas?', true),
    Pergunta('O truco é um jogo de cartas?', true),
  ];

  String get enunciado => _perguntas[_ultimaExibida].enunciado;

  bool get gabarito => _perguntas[_ultimaExibida].gabarito;

  bool get ehOFim => _ultimaExibida == 0 ? true : false;

  void setProxima() {
    if (_ultimaExibida < _perguntas.length - 1)
      _ultimaExibida++;
    else
      _ultimaExibida = 0;
  }
}
