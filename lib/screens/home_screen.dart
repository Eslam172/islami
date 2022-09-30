import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/shared/cubit/cubit.dart';
import 'package:islami/shared/cubit/states.dart';
import 'package:islami/shared/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: primColor,
            unselectedItemColor: primColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 1
                      ? const ImageIcon(
                      AssetImage('assets/images/story_fill.png'))
                      : const ImageIcon(AssetImage('assets/images/story.png')),
                  label: 'Stories'),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 1
                      ? const ImageIcon(
                      AssetImage('assets/images/fav_fill.png'))
                      : const ImageIcon(AssetImage('assets/images/fav.png')),
                  label: 'Fav'),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 2
                      ? const Icon(Icons.play_circle_fill,
                    size: 26,
                  )
                      : const ImageIcon(AssetImage('assets/images/audio.png')),
                  label: 'Audio'),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 3
                      ? const ImageIcon(
                          AssetImage('assets/images/home_fill.png'))
                      : const ImageIcon(AssetImage('assets/images/home.png')),
                  label: 'Home'),



            ],
            onTap: (index) {
              cubit.changeIndex(index);
            },
            currentIndex: cubit.currentIndex,
          ),
        );
      },
    );
  }
}
