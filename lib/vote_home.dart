import 'package:flutter/material.dart';

class Vote_Home extends StatefulWidget {
  const Vote_Home({Key? key}) : super(key: key);

  @override
  State<Vote_Home> createState() => _Vote_HomeState();
}

class _Vote_HomeState extends State<Vote_Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Column(
                    children: [
                      Text('0'),
                    ],
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
