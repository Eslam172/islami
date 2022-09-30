import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/screens/audio_screen.dart';
import 'package:islami/screens/fav_screen.dart';
import 'package:islami/screens/home_page_screen.dart';
import 'package:islami/screens/story_screen.dart';
import 'package:islami/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>{

  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex= 3;

  List<Widget> screens =[
    const StoryScreen(),
    const FavScreen(),
    const AudioScreen(),
    const HomePageScreen(),
  ];

  void changeIndex(index){
    currentIndex = index;
    emit(ChangeBottomNavState());
  }
}