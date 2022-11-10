import 'package:assignment/counterbloc_bloc.dart';
import 'package:assignment/page2.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Page1 extends StatefulWidget {
  Page1({Key? key, }) : super(key: key);



  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: BlocBuilder<CounterBloc, CounterblocState>(
        //cubit: counterBloc,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()));
                }, child: Text("Page2")),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("click");
          counterBloc.add(IncrementEvent());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
