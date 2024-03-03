import 'dart:typed_data';

import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class CameraLiveFeed extends StatefulWidget {
  const CameraLiveFeed({
    super.key,
  });

  @override
  State<CameraLiveFeed> createState() => _CameraLiveFeedState();
}

class _CameraLiveFeedState extends State<CameraLiveFeed> {
  late final channel = IOWebSocketChannel.connect('ws://192.168.203.172:8765');
  late List<int> imageBytes = [];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height(context, 0.50),
          width: width(context, 0.65),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 47, 46, 46),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: StreamBuilder(
                  stream: channel.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      imageBytes = snapshot.data;
                      return Image.memory(
                        Uint8List.fromList(imageBytes),
                        gaplessPlayback: true,
                        excludeFromSemantics: true,
                        fit: BoxFit.cover,
                      );
                    }
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
        ),
        Positioned(
            child: Container(
          height: height(context, 0.50),
          width: width(context, 0.09),
          decoration: const BoxDecoration(
            color: Color.fromARGB(137, 0, 0, 0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        )),
      ],
    );
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
