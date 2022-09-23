import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/cubit/States.dart';
import '../layout/cubit/cubit.dart';
import '../shared/components.dart';


class SportScreen extends StatelessWidget {
  const SportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <NewsCubit,NewseStates>(
      listener: (context, state) {},
      builder: (context,state){
        var list = NewsCubit.get(context).Sports;
        return ConditionalBuilder(
          condition:list.length>0,
          builder:(context)=> ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder:(context,index)=> ArticalsItems(list[index]),
            separatorBuilder: (context,index)=>Divider(
              height: 10,
              thickness: 5,),
            itemCount: 10,
          )  ,
          fallback:(context)=>Center(child: CircularProgressIndicator()) ,
        );
      },
    );
  }
}
