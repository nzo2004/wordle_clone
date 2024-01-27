import 'package:flutter/material.dart';
import 'package:wordle_clone/components/grid.dart';
import 'package:wordle_clone/components/keyboard_row.dart';

class My_Home_View extends StatefulWidget {
  const My_Home_View({super.key});

  @override
  State<My_Home_View> createState() => _My_Home_ViewState();
}

class _My_Home_ViewState extends State<My_Home_View> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Grid(),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                    KeyboardRow(
                      min: 1,
                      max: 10,
                    ),
                    KeyboardRow(
                      min: 11,
                      max: 19,
                    ),
                    KeyboardRow(
                      min: 20,
                      max: 29,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
