import 'package:flutter/material.dart';
import 'package:search_flutter/model/movie_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
//create a dummy list of movies
//used the IMDB data
  int a = 5;

  static List<MovieModel> main_movies_list = [
    MovieModel(
        movie_title: 'The Godfather: Part II',
        movie_release_year: 1974,
        movie_poster_url:
            'https://www.themoviedb.org/t/p/original/ecBRkXerAZqRRUfR8Lt3L3Dh6J5.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Shawshank Redemption',
        movie_release_year: 1994,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1mWWMXuGSBuNjSspbq6AiipXaH/The-Shawshank-Redemption-Retro-Vintage-Classic-Movie-Poster-Canvas-Painting-Wall-Sticker-Home-Art-Home-Decoration.jpg',
        rating: 9.3),
    MovieModel(
        movie_title: 'The Godfather',
        movie_release_year: 1972,
        movie_poster_url:
            'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg',
        rating: 9.2),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Dark Knight',
        movie_release_year: 2008,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1Umy6OFXXXXaaXVXXq6xXFXXXy/07-Batman-The-Dark-Knight-Rises-Legend-Ends-Movie-14-x18-Poster.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'Công chúa Jasmine',
        movie_release_year: 1994,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1mWWMXuGSBuNjSspbq6AiipXaH/The-Shawshank-Redemption-Retro-Vintage-Classic-Movie-Poster-Canvas-Painting-Wall-Sticker-Home-Art-Home-Decoration.jpg',
        rating: 9.3),
    MovieModel(
        movie_title: 'The Shawshank Redemption',
        movie_release_year: 1994,
        movie_poster_url:
            'https://ae01.alicdn.com/kf/HTB1mWWMXuGSBuNjSspbq6AiipXaH/The-Shawshank-Redemption-Retro-Vintage-Classic-Movie-Poster-Canvas-Painting-Wall-Sticker-Home-Art-Home-Decoration.jpg',
        rating: 9.3),
  ];

  //create the list the going to be displayed and filter
  List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    //this is the function that will filter our list
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 10, 99),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 20, 1, 24),
        title: const Text(
          'New Movie App',
          style: TextStyle(),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search a movie',
              style: TextStyle(
                color: Color.fromARGB(255, 211, 207, 207),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 102, 64, 148),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'eg: Hãy Trao Cho Anh',
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "Now result found",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    )
                  : ListView.builder(
                      itemCount: //5 of display_list.length
                          display_list.length < a ? display_list.length : a,
                      itemBuilder: (context, index) => ListTile(
                            contentPadding: EdgeInsets.all(8.0),
                            title: Text(
                              display_list[index].movie_title!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '${display_list[index].movie_release_year!}',
                              style: TextStyle(color: Colors.white60),
                            ),
                            trailing: Text(
                              '${display_list[index].rating!}',
                              style: TextStyle(color: Colors.amber),
                            ),
                            leading: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MovieDetails(
                                            movie: display_list[index])));
                              },
                              child: Image.network(
                                  display_list[index].movie_poster_url!),
                            ),
                          )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, right: 10.0, left: 10.0, bottom: 1.0),
              child: Container(
                height: 50,
                width: double.maxFinite,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (a < display_list.length) {
                        a = a + 5;
                        if (a > display_list.length) {
                          a = display_list.length;
                          print(a);
                        }
                      } else if (a >= display_list.length) {
                        a = display_list.length;
                        print("hết phim rồi");
                        return;
                      }
                    });
                  },
                  child: Text(
                    "Load more :" + a.toString() + " movies",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  final MovieModel movie;

  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 10, 99),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 20, 1, 24),
        title: Text(
          //Movie Title

          movie.movie_title!,
          style: TextStyle(
            color: Color.fromARGB(255, 211, 207, 207),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            inherit: true,
            fontStyle: FontStyle.italic,
          ),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Movie Details',
              style: TextStyle(
                color: Color.fromARGB(255, 211, 207, 207),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      movie.movie_poster_url!,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      movie.movie_title!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${movie.movie_release_year!}',
                    style: TextStyle(color: Colors.white60),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${movie.rating!}',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
