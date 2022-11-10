import 'package:assignment/counterbloc_bloc.dart';
import 'package:assignment/page1.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Page2 extends StatefulWidget {
  Page2({Key? key,}) : super(key: key);

  //final String title;

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1()));
                }, child: Text("Page1")),
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
