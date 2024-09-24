import 'package:bloc/bloc.dart';
import 'package:clean_arc_http_ecom_app/network_manager/rest_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../screens/login_screen/bottom_bar_tabs.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitial());
  logIn({required String email,required String password,required BuildContext context}){
    emit(LogInLoading());
    Map requestBody={
      "email":email,
      "password":password
    };
    RestClient.logIn(requestBody).then((value){
      emit(LogInLoaded());
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const BottomBarTabs()));

    }).onError((error,stackTrace){
      emit(LogInError());
    });
  }
}
