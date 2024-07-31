import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneWidget extends StatelessWidget {
  const XylophoneWidget({
    Key? key,
    required this.bgColor,
    required this.notaNomer,
  }) : super(key: key);

  final Color bgColor;
  final String notaNomer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: () async {
        if (!kIsWeb) {
          final player = AudioPlayer();
          await player.setSource(AssetSource('note$notaNomer.wav'));
          await player.resume();
        } else {
          print('Audio playback is not supported on the web');
        }
      },
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 1,
        color: bgColor,
      ),
    );
  }
}
