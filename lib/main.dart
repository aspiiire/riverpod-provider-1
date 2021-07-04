import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final myProvider = Provider((ref) => 'Something');
final anotherProvider = Provider((ref) => 'Something Else');
final moreThanTwoProvider = Provider((ref) => 'More than two');

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Consumer(
            builder: (_, watch, __) {
              String myData = watch(myProvider);
              String another = watch(anotherProvider);
              String moreThanTwo = watch(moreThanTwoProvider);

              return Column(
                children: [
                  Text(myData),
                  Text(another),
                  Text(moreThanTwo),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}