import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(nombre: 'Final Fantasy 7', imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2020/04/final-fantasy-vii-remake-1930815.jpg',),
          SizedBox(height: 10),
          CustomCardTipo2(nombre: 'Monkey Island', imageUrl: 'https://expansivedlc.com/wp-content/uploads/2022/08/secret-of-monkey-island-special-dosgamers-2.jpg',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://sm.ign.com/ign_es/screenshot/default/metal-gear1_s2be.jpg',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2013/08/244812-motivo-que-lara-convirtio-tomb-raider.jpg',),
        ],
      )
    );
  }
}

