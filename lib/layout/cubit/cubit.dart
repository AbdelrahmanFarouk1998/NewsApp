import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterwitherapp22/layout/cubit/States.dart';

import '../../model/business.dart';
import '../../model/network/dio_helper.dart';
import '../../model/science.dart';
import '../../model/settings.dart';
import '../../model/sports.dart';

class NewsCubit extends Cubit<NewseStates>{

  NewsCubit() :super(initialStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  int Currentindex = 0 ;

  List<BottomNavigationBarItem> BottomItems = [
    BottomNavigationBarItem(label: 'Busines',icon: Icon(Icons.business) ),
    BottomNavigationBarItem(label: 'Sports',icon: Icon(Icons.sports_volleyball) ),
    BottomNavigationBarItem(label: 'Science',icon: Icon(Icons.science) ),
    BottomNavigationBarItem(label: 'Settings',icon: Icon(Icons.settings) ),


  ];

  List<Widget>Screen=[
    BusinessScreen(),
    SportScreen(),
    ScinseScreen(),
    settingsScreen()
  ];

  void Changenavbar ( int index){
    Currentindex=index;
    emit(bottomnavStates());
  }

  List <dynamic> Business= [];


  void getBusiness (){
    emit(loadingStates());
    DioHelper.getdata(
        url: '/v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'business',
          'apiKey': '2803116cf1e14310b47a5f2105636d44',
        }
    ).then((value) {
      //print(value.data.toString());
      Business=value.data['articles'];
      print(Business[0]['title']);
      emit(getBusinessSucess());
    }).catchError((error){
      print(error.toString());
      emit(getBusinessEroor(error.toString()));
    });
  }



  List <dynamic> Sports= [];


  void getSports(){
    emit(loadingSportsStates());

      DioHelper.getdata(
          url: '/v2/top-headlines',
          query: {
            'country': 'eg',
            'category': 'sports',
            'apiKey': '2803116cf1e14310b47a5f2105636d44',
          }
      ).then((value) {
        //print(value.data.toString());
        Sports=value.data['articles'];
        print(Sports[0]['title']);
        emit(getSportsSucess());
      }).catchError((error){
        print(error.toString());
        emit(getSportsEroor(error.toString()));
      });


  }




  List <dynamic> science= [];


  void getscience(){
    emit(loadingScienceStates());
    DioHelper.getdata(
        url: '/v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'science',
          'apiKey': '2803116cf1e14310b47a5f2105636d44',
        }
    ).then((value) {
      //print(value.data.toString());
      science=value.data['articles'];
      print(science[0]['title']);
      emit(getScienceSucess());
    }).catchError((error){
      print(error.toString());
      emit(getScienceEroor(error.toString()));
    });
  }



}