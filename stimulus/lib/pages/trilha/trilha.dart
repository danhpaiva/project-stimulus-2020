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
            imagesCards: ['comun-market-grafico-01.png'],
            titleCards: ['Como desenvolvo a comunicação no meu negócio?'],
          ),
          Modules_ListView(
            moduleName: 'Tecnologia e Inovação',
            iconModule: Icons.batch_prediction,
            imagesCards: ['tecn-inova-pensando-01.png'],
            titleCards: [
              'Como uma inovação pode alavancar o seu negócio por inteiro?'
            ],
          ),
          Modules_ListView(
            moduleName: 'Gestão de RH',
            iconModule: Icons.assignment_ind,
            imagesCards: ['gestao-rh-pessoa-01.png'],
            titleCards: [
              'O gerenciamento de recursos humanos e sua importância'
            ],
          ),
        ],
      ),
    );
  }
}
