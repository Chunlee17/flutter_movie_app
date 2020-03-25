import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constant/style.dart';
import 'package:flutter_movie_app/model/movie_model.dart';
import 'package:flutter_movie_app/widgets/UI_helper.dart';

class MovieDetailPage extends StatefulWidget {
  final Movie movie;
  MovieDetailPage(this.movie);
  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  Movie get movie => widget.movie;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildHeader(),
            UIHelper.verticalSpace(32),
            buildMovieInfo(),
            UIHelper.verticalSpace(16),
            buildMovieGenres(),
            buildPlotSummary(),
            buildCastAndCrewList(),
          ],
        ),
      ),
    );
  }

  Widget buildCastAndCrewList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Cast & Crew", style: titleStyle),
          UIHelper.verticalSpace(20),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.actors.length,
              itemBuilder: (context, index) {
                final actor = movie.actors[index];
                return Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(actor.image),
                        radius: 32,
                      ),
                      UIHelper.verticalSpace(4),
                      Container(
                        height: 36,
                        child: Text(actor.realName, style: subtitleStyleBold, textAlign: TextAlign.center),
                      ),
                      Text(actor.playAs, style: infoStyle),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPlotSummary() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Plot Summary", style: titleStyle),
          UIHelper.verticalSpace(),
          Text(movie.plotSummary, style: subtitleStyle.copyWith(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget buildMovieGenres() {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: movie.genres.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final genre = movie.genres[index];
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

  Widget buildMovieInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(movie.name, style: headerStyle),
                UIHelper.verticalSpace(),
                Row(
                  children: [
                    Text("${movie.year}", style: subtitleStyle),
                    UIHelper.horizontalSpace(12),
                    Text("PG13", style: subtitleStyle),
                    UIHelper.horizontalSpace(12),
                    Text("${movie.duration.inMinutes} minutes", style: subtitleStyle),
                  ],
                ),
              ],
            ),
          ),
          Card(
            color: Colors.pink,
            shape: roundRect(16),
            child: InkWell(
              onTap: () {},
              customBorder: roundRect(16),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(bottom: 8),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45)),
              child: Image.network(movie.image, fit: BoxFit.cover),
            ),
          ),
          Positioned(child: buildMovieRatingInfo(), bottom: 0, right: 0),
          Positioned(
            child: SafeArea(
              child: Card(
                color: Colors.white24,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            top: 8,
            left: 8,
          ),
        ],
      ),
    );
  }

  Widget buildMovieRatingInfo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.horizontal(start: Radius.circular(36)),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, spreadRadius: 4)],
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width - 32,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.star, color: Colors.yellow[700], size: 32),
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "${movie.rating}", style: titleStyle),
                  TextSpan(text: "/10", style: subtitleStyle),
                ]),
              ),
              UIHelper.verticalSpace(4),
              Text("${movie.totalRate}", style: infoStyle),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.star_border, size: 32),
              Text("Rate This", style: subtitleStyleBold),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Text("86", style: subtitleStyleBold.copyWith(color: Colors.white)),
                padding: EdgeInsets.all(6),
                color: Colors.green,
              ),
              UIHelper.verticalSpace(2),
              Text("Metascore", style: subtitleStyleBold),
              Text("62 ciritic reviews", style: infoStyle),
            ],
          ),
        ],
      ),
    );
  }
}
