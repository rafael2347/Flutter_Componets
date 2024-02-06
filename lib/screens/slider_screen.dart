import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders Screen'), // Corregido el uso de Title
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value; // Actualizar el valor del slider
              setState(() {
                
              });
            }
            : null
          ),
         Checkbox(
          value: true, 
          onChanged: (value){
            _sliderEnabled = value ?? true;
            setState(() {
              
            });
          },
          ),
          Switch(
             value: _sliderEnabled, 
          onChanged: (value){
            _sliderEnabled = value ?? true;
            setState(() {
              
            });
          },
          )
        ],
      ),
    );
  }
}
