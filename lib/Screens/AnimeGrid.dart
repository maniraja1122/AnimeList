import 'dart:convert';

import 'package:animelist/Widgets/AnimeItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import '../Models/Anime.dart';

class AnimeGrid extends StatelessWidget {
  String name = "";
  AnimeGrid({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: get(Uri.parse("https://api.jikan.moe/v3/search/anime?q=$name")),
          builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
            if(snapshot.hasError){
              return Text("Error");
            }
            else if(snapshot.hasData){
              var data=snapshot.data!.body;
              var MyAnime=Anime.fromJson(jsonDecode(data));
              return DynamicHeightGridView(crossAxisCount: 2,builder: (c,i){
                return AnimeItem(myresult:MyAnime.results![i]);
              }, itemCount: MyAnime.results!.length,);
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
