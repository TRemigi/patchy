import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView(this._onTapCreatePatch, {Key? key}) : super(key: key);

  final void Function(BuildContext) _onTapCreatePatch;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Patchy'),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: TextButton(
              child: const Text('Create Patch',),
              onPressed: () => _onTapCreatePatch(context),
            ),
          ),
        ),
      );
}
