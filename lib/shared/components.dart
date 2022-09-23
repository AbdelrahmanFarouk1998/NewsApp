import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ArticalsItems(Articals) => Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage('${Articals['urlToImage']}'),
              fit: BoxFit.fill,
            )
        ),
      ),
      SizedBox(width: 20,),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text('${Articals['title']}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('${Articals['publishedAt']}',style: TextStyle(fontWeight: FontWeight.w200),),

            ],
          ),
        ),
      )

    ],
  ),
);
Widget MyDivider() => Divider(
height: 10,
thickness: 5,);
