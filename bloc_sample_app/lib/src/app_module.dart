import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:bloc_sample_app/src/app_widget.dart';
import 'package:bloc_sample_app/src/app_bloc.dart';

class AppModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: AppWidget(),
      blocs: [
        Bloc((i) => AppBloc()),
      ],
    );
  }
}