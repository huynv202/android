import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:search_flutter/model/favorite_list.dart';
import 'package:search_flutter/model/movie_model.dart';
import 'package:search_flutter/model/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

  // ignore: non_constant_identifier_names
  static List<FavoriteList> main_favorite_list = [];

  // ignore: non_constant_identifier_names
  static List<MovieModel> main_movies_list = [
    MovieModel(
        movie_title: 'The Godfather: Part II',
        movie_release_year: 1974,
        movie_poster_url:
            'https://www.themoviedb.org/t/p/original/ecBRkXerAZqRRUfR8Lt3L3Dh6J5.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Godfather: Part II',
        movie_release_year: 1974,
        movie_poster_url:
            'https://www.themoviedb.org/t/p/original/ecBRkXerAZqRRUfR8Lt3L3Dh6J5.jpg',
        rating: 6.0),
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
  // ignore: non_constant_identifier_names
  List<MovieModel> display_list = List.from(main_movies_list);

  // ignore: non_constant_identifier_names
  List<FavoriteList> favorite_list = List.from(main_favorite_list);
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 60, 20, 109),
                image: DecorationImage(
                  image: AssetImage('assets/cooltext429253779126071.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.home,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'Shorts',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.video_collection,
                color: Colors.red,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'Favorite',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavoriteScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Explore',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.explore,
                color: Colors.green,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExploreScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Seen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.send_time_extension,
                color: Colors.red,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'News',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: const Icon(
                Icons.newspaper,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
            ),
            ListTile(
                title: const Text(
                  'Help',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: const Icon(
                  Icons.help,
                  color: Colors.brown,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HelpScreen()),
                  );
                }),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 85, 10, 99),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavoriteScreen()));
              },
              icon: const Icon(Icons.favorite_border_sharp)),
        ],
        backgroundColor: const Color.fromARGB(255, 20, 1, 24),
        title: const Text(
          'New Movie App',
          style: TextStyle(),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Search a movie',
              style: TextStyle(
                color: Color.fromARGB(255, 211, 207, 207),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 102, 64, 148),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'eg: Hãy Trao Cho Anh',
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.purple.shade900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: display_list.isEmpty
                  ? const Center(
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
                            contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              display_list[index].movie_title!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              '${display_list[index].movie_release_year!}',
                              style: const TextStyle(color: Colors.white60),
                            ),
                            trailing: Text(
                              '${display_list[index].rating!}',
                              style: const TextStyle(color: Colors.amber),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // FloatingActionButton(
                //   onPressed: () {
                //     setState(() {
                //       display_list = main_movies_list
                //           .where((element) => element.rating! > 9)
                //           .toList();
                //     });
                //   },
                //   child: const Icon(Icons.filter_list),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (a < display_list.length) {
                          a = a + 5;
                          if (a > display_list.length) {
                            a = display_list.length;
                          }
                        } else if (a >= display_list.length) {
                          a = display_list.length;
                          return;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<FavoriteList> abc = [];
// List<String> ab = [];

class MovieDetails extends StatefulWidget {
  final MovieModel movie;

  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  void showAlert() {
    // QuickAlert.show(
    //     context: context,
    //     type: QuickAlertType.success,
    //     title: "Thêm vào mục yêu thích thành công");
    // QuickAlert.show(
    //     context: context,
    //     type: QuickAlertType.error,
    //     title: "Thêm vào mục yêu thích thất bại");
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      title: "thêm vào danh sách yêu thích?",
      confirmBtnColor: Colors.green,
      confirmBtnText: "Yes",
      cancelBtnText: "No",
    );
  }

  void showAlertSuccess() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        title: "Thêm vào mục yêu thích thành công");
  }

  bool show = false;

  bool isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 85, 10, 99),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 20, 1, 24),
        title: Text(
          //Movie Title

          widget.movie.movie_title!,
          style: const TextStyle(
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Movie Details',
              style: TextStyle(
                color: Color.fromARGB(255, 211, 207, 207),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                            height: 300,
                            width: double.infinity,

                            //show title

                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    widget.movie.movie_title!,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 80, 14, 92),
                                        shadows: [
                                          Shadow(
                                            blurRadius: 10.0,
                                            color: Colors.white,
                                            offset: Offset(10.0, 20.0),
                                          ),
                                        ],
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  //add button
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: const BorderSide(
                                                    color: Colors.red))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.red),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white)),
                                    onPressed: isProcessing
                                        ? null
                                        : () {
                                            setState(() {
                                              isProcessing = true;
                                            });
                                            abc.add(FavoriteList(
                                              movie_title:
                                                  widget.movie.movie_title,
                                              movie_poster_url:
                                                  widget.movie.movie_poster_url,
                                              movie_release_year: widget
                                                  .movie.movie_release_year
                                                  .toString(),
                                              rating: widget.movie.rating
                                                  .toString(),
                                            ));

                                            if (isProcessing = true) {
                                              //delay 2s
                                              Future.delayed(
                                                  const Duration(seconds: 2),
                                                  () {
                                                showAlertSuccess();
                                              });
                                            }
                                            //delay 2s
                                          },
                                    child: const Text("Add to favorite")),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: const BorderSide(
                                                    color:
                                                        Colors.greenAccent))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.green),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white)),
                                    onPressed: () {
                                      //push to video player screen
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const VideoPlayer()));
                                    },
                                    child: const Text(
                                      "Play",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ));
                      });
                },
                child: ListView(
                  children: [
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image.network(
                        widget.movie.movie_poster_url!,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.movie.movie_title!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.movie.movie_release_year!}',
                      style: const TextStyle(color: Colors.white60),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.movie.rating!}',
                      style: const TextStyle(color: Colors.amber),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
      ),
      //show list in abc to listview
      body: ListView.builder(
        itemCount: abc.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(abc[index].movie_title!),
            subtitle: Text(abc[index].movie_release_year!),
            leading: Image.network(abc[index].movie_poster_url!),
            trailing: Text(abc[index].rating!),
          );
        },
      ),
    );
  }
}

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shorts'),
      ),
      body: const Center(
        child: Text('Shorts'),
      ),
    );
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  // ignore: non_constant_identifier_names
  static List<MovieModel> main_movies_list = [
    MovieModel(
        movie_title: 'The Godfather: Part II',
        movie_release_year: 1974,
        movie_poster_url:
            'https://www.themoviedb.org/t/p/original/ecBRkXerAZqRRUfR8Lt3L3Dh6J5.jpg',
        rating: 9.0),
    MovieModel(
        movie_title: 'The Godfather: Part II',
        movie_release_year: 1974,
        movie_poster_url:
            'https://www.themoviedb.org/t/p/original/ecBRkXerAZqRRUfR8Lt3L3Dh6J5.jpg',
        rating: 6.0),
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

  // ignore: non_constant_identifier_names
  List<MovieModel> display_list = List.from(main_movies_list);

  @override
  void initState() {
    display_list =
        main_movies_list.where((element) => element.rating! > 9).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 66, 30),
      appBar: AppBar(
        title: const Text('Explore'),
        backgroundColor: Colors.green,
      ),
      body:
          //show display_list with rating >9
          ListView.builder(
        itemCount: display_list.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 7, 49, 8),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  leading: Image.network(
                      display_list[index].movie_poster_url.toString()),
                  title: Text(
                    display_list[index].movie_title.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                      display_list[index].movie_release_year.toString(),
                      style: const TextStyle(color: Colors.white)),
                  trailing: Text(display_list[index].rating.toString(),
                      style: const TextStyle(color: Colors.white)),
                ),
              ],
            ),
          );
        },
      ),
      //add a floating action button to filter the list
    );
  }
}

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: const Center(
        child: Text('News'),
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: const Center(
        child: Text('Help'),
      ),
    );
  }
}
