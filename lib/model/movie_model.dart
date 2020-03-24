class Movie {
  String name;
  double rating;
  String image;
  double totalRate;
  int year;
  Duration duration;
  List<String> genres;
  String plotSummary;
  List<Actor> actors;
  Movie({this.actors, this.duration, this.genres, this.image, this.name, this.plotSummary, this.rating, this.totalRate, this.year});
}

class Actor {
  String realName;
  String playAs;
  String image;
  Actor({this.image, this.playAs, this.realName});
}

final List<Movie> movies = [
  Movie(
    actors: [
      Actor(image: "https://source.unsplash.com/400x401/?people", realName: "Robert Downy JR", playAs: "Tony Stark"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Chris Hemsworth", playAs: "Thor"),
      Actor(image: "https://source.unsplash.com/400x403/?people", realName: "Mark Raffalo", playAs: "Hulk"),
      Actor(image: "https://source.unsplash.com/400x404/?people", realName: "Scarlett Johansson", playAs: "Black widow"),
      Actor(image: "https://source.unsplash.com/400x405/?people", realName: "Chris Evans", playAs: "Captain America"),
    ],
    name: "Avengers: Endgame",
    rating: 9.5,
    totalRate: 150122,
    image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQA_-tL18_rj9zEcjN6n41NEaJm-kRNF9UeOtvksZ4z_OW6jRA9",
    year: 2019,
    duration: Duration(minutes: 182),
    genres: ["Action", "Superheroes", "Science Fiction", "Fantasy"],
    plotSummary:
        "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance",
  ),
  Movie(
    actors: [
      Actor(image: "https://source.unsplash.com/400x401/?people", realName: "Robert Downy JR", playAs: "Tony Stark"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Chris Hemsworth", playAs: "Thor"),
      Actor(image: "https://source.unsplash.com/400x403/?people", realName: "Mark Raffalo", playAs: "Hulk"),
      Actor(image: "https://source.unsplash.com/400x404/?people", realName: "Scarlett Johansson", playAs: "Black widow"),
      Actor(image: "https://source.unsplash.com/400x405/?people", realName: "Chris Evans", playAs: "Captain America"),
    ],
    name: "Avengers: Endgame",
    rating: 9.5,
    totalRate: 150122,
    image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQA_-tL18_rj9zEcjN6n41NEaJm-kRNF9UeOtvksZ4z_OW6jRA9",
    year: 2019,
    duration: Duration(minutes: 182),
    genres: ["Action", "Superheroes", "Science Fiction", "Fantasy"],
    plotSummary:
        "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance",
  ),
  Movie(
    actors: [
      Actor(image: "https://source.unsplash.com/400x401/?people", realName: "Robert Downy JR", playAs: "Tony Stark"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Chris Hemsworth", playAs: "Thor"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Mark Raffalo", playAs: "Hulk"),
      Actor(image: "https://source.unsplash.com/400x404/?people", realName: "Scarlett Johansson", playAs: "Black widow"),
      Actor(image: "https://source.unsplash.com/400x405/?people", realName: "Chris Evans", playAs: "Captain America"),
    ],
    name: "Avengers: Endgame",
    rating: 9.5,
    totalRate: 150122,
    image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQA_-tL18_rj9zEcjN6n41NEaJm-kRNF9UeOtvksZ4z_OW6jRA9",
    year: 2019,
    duration: Duration(minutes: 182),
    genres: ["Action", "Superheroes", "Science Fiction", "Fantasy"],
    plotSummary:
        "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance",
  ),
];
