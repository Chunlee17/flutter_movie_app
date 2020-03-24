import 'package:flutter/material.dart';
import 'package:flutter_movie_app/model/movie_model.dart';
import 'package:flutter_movie_app/pages/movie_detail/movie_detail_page.dart';
import 'package:flutter_movie_app/utils/navigator.dart';
import 'package:flutter_movie_app/widgets/UI_helper.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              PageNavigator.push(context, MovieDetailPage(movie));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Container(
                color: Colors.blueGrey,
                width: double.infinity,
                child: Image.network(
                  movie.image,
                  height: MediaQuery.of(context).size.height * 0.45,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          UIHelper.verticalSpace(16),
          Text(movie.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          UIHelper.verticalSpace(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.yellow[700],
              ),
              UIHelper.horizontalSpace(),
              Text(
                movie.rating.toString(),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
