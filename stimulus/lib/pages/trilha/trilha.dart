import 'package:flutter/material.dart';
import '../../components/trilha/listview_modulos_trilha.dart';

class TrilhaCapacitacao extends StatefulWidget {
  @override
  _TrilhaCapacitacaoState createState() => _TrilhaCapacitacaoState();
}

class _TrilhaCapacitacaoState extends State<TrilhaCapacitacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, iconTheme: IconTheme.of(context),
        title: Text(
          'Trilha de Capacitação',
          style: TextStyle(color: Color(0xff042440), fontSize: 22),
        ),
        backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0, // <-- ELEVATION ZEROED
      ),
      body: ListView(
        children: <Widget>[
          Modules_ListView(
            moduleName: 'Financeiro',
            iconModule: Icons.attach_money,
            imagesCards: [
              'financeiro-money-01.png',
              'financeiro-interrogacao-03.png',
              'financeiro-documents-02.png',
              'financeiro-leitura-04.png'
            ],
            titleCards: [
              'Como mantenho minhas contas em dia?',
              'Como vender durante a pandemia?',
              'Como organizar minhas despesas?',
              'Como as medias do governo podem ajudar o meu negócio?'
            ],
          ),
          Modules_ListView(
            moduleName: 'Comunicação e Marketing',
            iconModule: Icons.campaign,
            imagesCards: [
              'comun-market-grafico-01.png',
              'comun-market-alvo-02.png',
              'comun-market-crescimento-03.png',
              'comun-market-midias-04.png'
            ],
            titleCards: [
              'Como desenvolvo a comunicação no meu negócio?',
              'Quais as estratégias de marketing alavancarão seu negócio',
              'Etapas para gerar desenvolvimento para seu processo',
              'A importância de transmitir sua marca'
            ],
          ),
          Modules_ListView(
            moduleName: 'Tecnologia e Inovação',
            iconModule: Icons.batch_prediction,
            imagesCards: [
              'tecn-inova-pensando-01.png',
              'tecn-inova-mudancas-02.png',
              'tecn-inova-tecnologia-03.png',
              'tecn-inova-transformar-04.png',
            ],
            titleCards: [
              'Como uma inovação pode alavancar o seu negócio por inteiro?',
              'Mudanças podem beneficiar meu negócio?',
              'Introduzindo um metódo tecnologico no meu processo',
              'Transformando o ambiente de trabalho e gerando lucro',
            ],
          ),
          Modules_ListView(
            moduleName: 'Gestão de RH',
            iconModule: Icons.assignment_ind,
            imagesCards: [
              'gestao-rh-pessoa-01.png',
              'gestao-rh-treinamento-02.png',
              'gestao-rh-feedback-03.png',
              'gestao-rh-contratacao-04.png',
            ],
            titleCards: [
              'O gerenciamento de recursos humanos e sua importância',
              'A importância de invetir em treinamentos',
              'Utilização do feedback para o desempenho das pessoas',
              'Otimização do seu processo de contratação',
            ],
          ),
        ],
      ),
    );
  }
}
