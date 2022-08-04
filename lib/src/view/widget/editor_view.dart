import 'dart:ui';

import 'package:flutter/material.dart';

class EditorView extends StatefulWidget {
  const EditorView(this.symbols, {Key? key}) : super(key: key);

  final List<String?> symbols;

  @override
  _EditorViewState createState() => _EditorViewState();
}

class _EditorViewState extends State<EditorView> {
  final Size windowSize = MediaQueryData.fromWindow(window).size;
  late Offset offset = Offset(windowSize.width / 2, windowSize.height / 2);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Patchy'),
        ),
        body: ListView.builder(
          itemCount: widget.symbols.length,
          itemBuilder: (context, index) {
            return widget.symbols[index] != null ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 50,
                  image: ExactAssetImage(widget.symbols[index]!),
                ),
              ],
            ) : Container();
          },
        ),
        // body: Stack(
        //   children: [
        //     // CustomPaint(),
        //     Positioned(
        //         left: offset.dx,
        //         top: offset.dy,
        //         child: GestureDetector(
        //           onPanUpdate: (dragDetails) {
        //             setState(() {
        //               offset = Offset(
        //                   offset.dx + dragDetails.delta.dx, offset.dy + dragDetails.delta.dy);
        //             });
        //           },
        //           child: Image(
        //             height: MediaQuery.of(context).size.height * .15,
        //             image: const ExactAssetImage('assets/vco-wavetable.png'),
        //           ),
        //         )),
        //   ],
        // ),
      );
}
