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

              ///vote count display row
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '0',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),

              /// vote count display row end
              SizedBox(
                height: 10.0,
              ),

              ///row to display name of the candidates
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Candidate 1',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Candidate 2',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),

              ///candidate display row end

              Spacer(),

              ///row for the buttons
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Vote 1',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Vote 2',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),

              ///bbuttons row end
              ///row for clear button
              ///
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {}, child: Text('Clear Vote Count')),
                  Spacer(),
                ],
              ),

              ///button row end
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
