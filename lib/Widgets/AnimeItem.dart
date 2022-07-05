import 'package:animelist/Models/Anime.dart';
import 'package:flutter/material.dart';

class AnimeItem extends StatelessWidget {
  Results myresult;
  AnimeItem({Key? key,required this.myresult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Column(
       children: [
         Image.network(myresult.imageUrl!),
         Text(myresult.title!),
         Text(myresult.synopsis!)
       ],
     ),
    );
  }
}
