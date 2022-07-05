import 'package:animelist/Helper/DataHelper.dart';
import 'package:animelist/Screens/AnimeGrid.dart';
import 'package:flutter/material.dart';

class TabGrids extends StatelessWidget {
  const TabGrids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: DataHelper.AnimeList.length,
        child:Scaffold(appBar:AppBar(title: Text("Anime List",),
          bottom: TabBar(isScrollable:true,tabs: [for(var i in DataHelper.AnimeList) Text(i,style: TextStyle(fontSize: 20),)],),
        ),
      body: TabBarView(children: [
        for(var i in DataHelper.Apilist) AnimeGrid(name: i)
      ],),
        ));
  }
}
