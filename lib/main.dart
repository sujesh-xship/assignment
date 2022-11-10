import 'package:assignment/counterbloc_bloc.dart';
import 'package:assignment/page1.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Page1(
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   Home({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: BlocBuilder<CounterBloc, CounterblocState>(
//         //cubit: counterBloc,
//         builder: (context, state) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'You have pushed the button this many times:',
//                 ),
//                 Text(
//                   state.counter.toString(),
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print("click");
//           counterBloc.add(IncrementEvent());
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
