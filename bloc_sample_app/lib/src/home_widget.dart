import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:bloc_sample_app/src/app_bloc.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AppBloc _bloc = BlocProvider.getBloc<AppBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Example"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.outCounter,
          builder: (context, snapshot) => Text(
            "${snapshot.data}",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: _bloc.decrement,
          ),
          SizedBox(height: 16,),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _bloc.increment,
          )
        ],
      ),
    );
  }
}
