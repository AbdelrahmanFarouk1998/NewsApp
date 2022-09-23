import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterwitherapp22/layout/cubit/States.dart';
import 'package:flutterwitherapp22/layout/cubit/cubit.dart';
import 'package:flutterwitherapp22/model/network/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..getBusiness()..getSports()..getscience(),
      child: BlocConsumer<NewsCubit, NewseStates>(
        listener: ((context, state) {}),
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('News App '),
              actions: [
                IconButton(icon: Icon(Icons.search),onPressed: (){},)
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.Currentindex,
              onTap: (index){
                cubit.Changenavbar(index);
              },
              items: cubit.BottomItems,
            ),
            body: cubit.Screen[cubit.Currentindex],

          );
        },
      ),
    );
  }
}
