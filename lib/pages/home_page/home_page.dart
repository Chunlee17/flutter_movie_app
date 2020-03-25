import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constant/app_constant.dart';
import 'package:flutter_movie_app/model/movie_model.dart';
import 'package:flutter_movie_app/utils/app_utils.dart';
import 'package:flutter_movie_app/widgets/UI_helper.dart';
import 'package:flutter_movie_app/widgets/movie_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  PageController pageController;
  String selectedGenre = "Crime";
  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.6);
    pageController.addListener(() => setState(() {}));
    tabController = TabController(vsync: this, length: 4);
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
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorWeight: 5.0,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 5.0, color: Colors.pink),
              ),
              tabs: <Widget>[
                Tab(child: Text("Now Showing", style: TextStyle(fontSize: 16))),
                Tab(child: Text("Top Rate", style: TextStyle(fontSize: 16))),
                Tab(child: Text("Popular", style: TextStyle(fontSize: 16))),
                Tab(child: Text("Upcoming", style: TextStyle(fontSize: 16))),
              ],
            ),
            UIHelper.verticalSpace(24),
            buildGenreList(),
            UIHelper.verticalSpace(32),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  if (pageController.position.minScrollExtent == null || pageController.position.maxScrollExtent == null) {
                    Future.delayed(Duration(microseconds: 1), () {
                      setState(() {});
                    });
                    return Container();
                  }
                  final movie = movies[index];
                  double value = (pageController.page - index).abs().clamp(0.0, 1.0);
                  double distortionValue = Curves.easeIn.transform(value);
                  bool isLeft = pageController.page > index;
                  double rotationAsDegree = 8;
                  if (isLeft) rotationAsDegree = -rotationAsDegree;
                  return Transform.rotate(
                    angle: degreeToRadian(rotationAsDegree) * distortionValue,
                    alignment: isLeft ? Alignment.bottomRight : Alignment.bottomLeft,
                    child: MovieCard(movie),
                  );
                },
              ),
            ),
          ],
        ),
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
            child: FlatButton(
              child: Text(genre),
              textColor: genre == selectedGenre ? Colors.white : Colors.black,
              color: genre == selectedGenre ? Colors.pink : Colors.white,
              shape: StadiumBorder(side: BorderSide(width: 1.0, color: Colors.black12)),
              onPressed: () {
                setState(() => selectedGenre = genre);
              },
            ),
          );
        },
      ),
    );
  }
}
