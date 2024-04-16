import 'package:flutter/material.dart';
import 'package:flutter_blockchain/testvoting/test_functions.dart';
import 'package:http/http.dart';

import 'package:web3dart/web3dart.dart';
import 'test_constants.dart';

class Vote_Home extends StatefulWidget {
  const Vote_Home({Key? key}) : super(key: key);

  @override
  State<Vote_Home> createState() => _Vote_HomeState();
}

class _Vote_HomeState extends State<Vote_Home> {
  Client? httpClient;
  Web3Client? ethClient;

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(infura_url, httpClient!);
    super.initState();
  }

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
                      FutureBuilder<List>(
                          future: getvotes_1(ethClient!),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return Text(
                              snapshot.data![0].toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            );
                          }),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      FutureBuilder<List>(
                          future: getvotes_2(ethClient!),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return Text(
                              snapshot.data![0].toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            );
                          }),
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
                        onPressed: () {
                          vote_1(ethClient!);
                        },
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
                        onPressed: () {
                          vote_2(ethClient!);
                        },
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
