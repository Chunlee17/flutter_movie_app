import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constant/app_constant.dart';
import 'package:flutter_movie_app/widgets/UI_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildAppBar(),
            TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorWeight: 5.0,
              tabs: <Widget>[
                Tab(child: Text("Now Showing", style: TextStyle(fontSize: 16))),
                Tab(child: Text("Box Office", style: TextStyle(fontSize: 16))),
                Tab(child: Text("High Rating", style: TextStyle(fontSize: 16))),
              ],
            ),
            UIHelper.verticalSpace(24),
            buildGenreList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.language),
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.bars), onPressed: () {}),
          IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: () {}),
        ],
      ),
    );
  }

  Widget buildGenreList() {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: AppConstant.genres.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final genre = AppConstant.genres[index];
          return Container(
            margin: EdgeInsets.only(left: 16, top: 4, bottom: 4),
            child: OutlineButton(
              child: Text(genre),
              shape: StadiumBorder(),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
