import 'package:flutter/material.dart';

import '../models/movies.dart';

class InsertScreen extends StatefulWidget {
  InsertScreen({Key? key}) : super(key: key);

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

final List<Movies> moviesList = [
  Movies(
    id: '1',
    title: 'Spider-Man: Into the Spider-Verse',
    director: 'Peter Ramsey',
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.assignmentx.com%2Fwp-content%2Fuploads%2F2018%2F12%2FSPIDER-MAN-INTO-THE-SPIDER-VERSE-movie-poster2.jpg&f=1&nofb=1',
  ),
  Movies(
    id: '2',
    title: 'Spider-Man: Into the Spider-Verse',
    director: 'Peter Ramsey',
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.assignmentx.com%2Fwp-content%2Fuploads%2F2018%2F12%2FSPIDER-MAN-INTO-THE-SPIDER-VERSE-movie-poster2.jpg&f=1&nofb=1',
  ),
  Movies(
    id: '3',
    title: 'Spider-Man: Into the Spider-Verse',
    director: 'Peter Ramsey',
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.assignmentx.com%2Fwp-content%2Fuploads%2F2018%2F12%2FSPIDER-MAN-INTO-THE-SPIDER-VERSE-movie-poster2.jpg&f=1&nofb=1',
  ),
  Movies(
    id: '4',
    title: 'Spider-Man: Into the Spider-Verse',
    director: 'Peter Ramsey',
    image:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.assignmentx.com%2Fwp-content%2Fuploads%2F2018%2F12%2FSPIDER-MAN-INTO-THE-SPIDER-VERSE-movie-poster2.jpg&f=1&nofb=1',
  ),
];

class _InsertScreenState extends State<InsertScreen> {
  void addNewMovie(
    String movieTitle,
    String movieDirector,
    String movieImage,
  ) {
    final newMovie = Movies(
      title: movieTitle,
      director: movieDirector,
      image: movieImage,
      id: DateTime.now().toString(),
    );

    setState(() {
      moviesList.add(newMovie);
    });
  }

  final titleController = TextEditingController();

  final directorController = TextEditingController();

  final imageController = TextEditingController();

  final snackBar = const SnackBar(
    content: Text(
      'Movie was added',
      style: TextStyle(color: Color(0xFFD4F1F4)),
    ),
    backgroundColor: Color(0xFF2D375A),
    elevation: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // first input field

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Color(0xFF6E7791)),
                fillColor: Color(0xFF2D375A),
                filled: true,
                prefixIcon: Icon(
                  Icons.movie,
                  color: Color(0xFF6E7791),
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Color(0xFF000000)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    (Radius.circular(40.0)),
                  ),
                ),
              ),
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              controller: titleController,
            ),
          ),

          // second input field

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Director',
                hintStyle: TextStyle(color: Color(0xFF6E7791)),
                fillColor: Color(0xFF2D375A),
                filled: true,
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xFF6E7791),
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Color(0xFF000000)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    (Radius.circular(40.0)),
                  ),
                ),
              ),
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              controller: directorController,
            ),
          ),

          // third input field

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Image URL',
                hintStyle: TextStyle(color: Color(0xFF6E7791)),
                fillColor: Color(0xFF2D375A),
                filled: true,
                prefixIcon: Icon(
                  Icons.image,
                  color: Color(0xFF6E7791),
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  borderSide: BorderSide(color: Color(0xFF000000)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    (Radius.circular(40.0)),
                  ),
                ),
              ),
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              controller: imageController,
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // submit button

          ElevatedButton(
            onPressed: () {
              if (titleController.text.isEmpty ||
                  directorController.text.isEmpty ||
                  imageController.text.isEmpty) {
                return;
              } else {
                addNewMovie(titleController.text, directorController.text,
                    imageController.text);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              primary: const Color(0xFF4ACFEF),
              padding: const EdgeInsets.all(12),
            ),
            child: const Text(
              'Add movie',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF05103A),
    );
  }
}
