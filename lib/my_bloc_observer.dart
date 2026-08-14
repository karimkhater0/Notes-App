import 'dart:developer';

import 'package:bloc/bloc.dart';

class MyBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
   log("$bloc ==> $change");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    log("Closing ==> $bloc");
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    log("Creating ==> $bloc");
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    // TODO: implement onTransition
  }
}