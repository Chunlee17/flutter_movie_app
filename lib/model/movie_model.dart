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
    plotSummary: "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance",
  ),
  Movie(
    actors: [
      Actor(image: "https://source.unsplash.com/400x401/?people", realName: "Tom Holland", playAs: "Spider man"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Zendaya", playAs: "Michelle Jones"),
      Actor(image: "https://source.unsplash.com/400x403/?people", realName: "Jake Gyllenhaal", playAs: "Mysterio"),
      Actor(image: "https://source.unsplash.com/400x404/?people", realName: "Jacob Batalon", playAs: "Ned Leeds"),
      Actor(image: "https://source.unsplash.com/400x405/?people", realName: "Samuel L Jackson", playAs: "Nick Fury"),
    ],
    name: "Spider-Man: Far From Home",
    rating: 7.5,
    totalRate: 110122,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPzzfxN6Ugvq902Ut7A-QkCDOqLzzbiYQ2bPk2pn5D9fBZBrT_",
    year: 2019,
    duration: Duration(minutes: 145),
    genres: ["Action", "Superheroes", "Science Fiction", "Fantasy"],
    plotSummary: "As Spider-Man, a beloved superhero, Peter Parker faces four destructive elemental"
        "monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins",
  ),
  Movie(
    actors: [
      Actor(image: "https://source.unsplash.com/400x401/?people", realName: "Joaquin Phoenix", playAs: "Joker"),
      Actor(image: "https://source.unsplash.com/400x402/?people", realName: "Rebert De Niro", playAs: "Murray Franklin"),
      Actor(image: "https://source.unsplash.com/400x403/?people", realName: "Frances Conroy", playAs: "Penny Fleck"),
      Actor(image: "https://source.unsplash.com/400x404/?people", realName: "Marc Maron", playAs: "Red Marco"),
      Actor(image: "https://source.unsplash.com/400x405/?people", realName: "Shea WingHam", playAs: ""),
    ],
    name: "Joker",
    rating: 8.5,
    totalRate: 150122,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJKLiEyyz1Q9RC8EBYl3ijr3nuGeyO2ETmwy6Kdq0AQtD0elWD",
    year: 2019,
    duration: Duration(minutes: 122),
    genres: ["Drama", "Crime film", "Thriller", "Psychological thriller"],
    plotSummary: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City."
        "Arthur wears two masks -- the one he paints for his day job as a clown,"
        "and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society,"
        "Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker",
  ),
];
