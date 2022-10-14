import 'package:flutter/material.dart';
import 'package:training/images.dart';
import 'package:training/ui/main_navigation.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      imageName: AppImages.movie.assetName,
      title: "Смертельная битва",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 2,
      imageName: AppImages.movie.assetName,
      title: "Отряд самоубийц: Миссия навылет",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 3,

      imageName: AppImages.movie.assetName,
      title: "Гарри Поттер и философский камень",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 4,
      imageName: AppImages.movie.assetName,
      title: "Властелин колец: Возвращение короля",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 5,
      imageName: AppImages.movie.assetName,
      title: "Каникулы в Простоквашино",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 6,
      imageName: AppImages.movie.assetName,
      title: "Джекин Чан",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 7,
      imageName: AppImages.movie.assetName,
      title: "Брюс Ли",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 8,
      imageName: AppImages.movie.assetName,
      title: "Паук",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
    Movie(
      id: 9,
      imageName: AppImages.movie.assetName,
      title: "Убийца",
      time: 'Август 16, 2022',
      description:
          "«Перл-Харбор» — военная мелодрама 2001 года режиссёра Майкла Бэя."
          " Фильм рассказывает о любовном треугольнике главных героев, "
          "который предшествует нападению военно-морского и "
          "военно-воздушного флота Японской Империи на военную базу"
          " США Перл-Харбор 7 декабря 1941 года. Мировая премьера фильма",
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }
void  _onMovieTap(int index){
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(MainNavigationRouteNames.movieDetails,arguments: id);
}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemExtent: 163,
          itemCount: _filteredMovies.length,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(movie.imageName)),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                movie.time,
                                style: const TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => _onMovieTap(index),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: (InputDecoration(
              labelText: "Поиск",
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: const OutlineInputBorder(),
            )),
          ),
        ),
      ],
    );
  }
}
