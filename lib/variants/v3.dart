import 'package:flutter/material.dart';

class V3 extends StatefulWidget {
  const V3({super.key});

  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  double _red = 0;
  double _green = 0;
  double _blue = 0;

  void _updateRed(double value) {
    setState(() {
      _red = value;
    });
  }

  void _updateGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  void _updateBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color currentColor = Color.fromRGBO(
      _red.toInt(),
      _green.toInt(),
      _blue.toInt(),
      1,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toInt().toString(),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _red,
          min: 0,
          max: 255,
          activeColor: Colors.red,
          onChanged: _updateRed,
        ),
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toInt().toString(),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _green,
          min: 0,
          max: 255,
          activeColor: Colors.green,
          onChanged: _updateGreen,
        ),
        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toInt().toString(),
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Slider(
          value: _blue,
          min: 0,

          max: 255,
          activeColor: Colors.blue,
          onChanged: _updateBlue,
        ),
        const SizedBox(height: 16),
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: currentColor,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}