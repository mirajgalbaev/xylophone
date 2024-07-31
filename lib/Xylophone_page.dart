import 'package:flutter/material.dart';
import 'package:xylophone/Xylophone_Widget.dart';

class XylophonePage extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();

  XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Xylophone',
            style: TextStyle(fontSize: 24),
          )),
          backgroundColor: Colors.black.withOpacity(0.78),
        ),
        body: Column(
          children: const [
            Expanded(
              child: XylophoneWidget(bgColor: Colors.yellow, notaNomer: '2'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.green, notaNomer: '1'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.blue, notaNomer: '3'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.orange, notaNomer: '4'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.red, notaNomer: '5'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.teal, notaNomer: '6'),
            ),
            Expanded(
              child: XylophoneWidget(bgColor: Colors.pink, notaNomer: '7'),
            ),
          ],
        ),
      ),
    );
  }
}

class AudioPlayer {}
