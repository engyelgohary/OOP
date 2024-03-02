class Movie{
late String title;
late String studio;
late String rating;
Movie(this.title,this.studio,this.rating);
Movie.init(this.title,this.studio) : this.rating = 'PG';
static getPG(List<Movie>movies){
  List<Movie>pGmovies = [];
  for(int i=0;i<movies.length;i++){
    if(movies[i].rating =='PG'){
      pGmovies.add(movies[i]);
      print('title: ${movies[i].title},studio; ${movies[i].studio},rating:${movies[i].rating} ');
    }
  }
}
}
void main(){
  Movie movie1 = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie movie2 = Movie('The Notebook', 'Sam Productions', 'PG');
  Movie movie3 = Movie('Remember Me', 'Nth Productions', 'PG13');
  Movie movie4 = Movie('La La Land', 'Lana Productions', 'PG');
  List <Movie> movies = [
    movie1,movie2,movie3,movie4
  ];
  Movie.getPG(movies);
}
