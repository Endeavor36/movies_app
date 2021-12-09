import 'package:flutter/material.dart';

import './insert_screen.dart';

class MoviesScreen extends StatefulWidget {
  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: moviesList.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: NetworkImage(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ft00.deviantart.net%2FRSDCTsCdr6svnn8gwE4BcpgIbe4%3D%2F300x200%2Ffilters%3Afixed_height(100%2C100)%3Aorigin()%2Fpre00%2F4dd4%2Fth%2Fpre%2Fi%2F2012%2F122%2Ff%2Fc%2Fvinyl_scratch_chillin___by_themightysqueegee-d4y9sul.png&f=1&nofb=1'),
                  ),
                  Text(
                    'Add some movies first!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: moviesList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: const Color(0xFF2D375A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                        leading: Image(
                          image: NetworkImage(moviesList[index].image),
                        ),
                        title: Text(
                          moviesList[index].title,
                          style: const TextStyle(color: Color(0xFFD4F1F4)),
                        ),
                        subtitle: Text(
                          moviesList[index].director,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          // onPressed: () {
                          // setState(() {
                          //   moviesList.remove(moviesList[index]);
                          // });

                          // }
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text(
                                'Delete the selected movie?',
                                style: TextStyle(color: Color(0xFFD4F1F4)),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      color: Color(0xFF4ACFEF),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      moviesList.remove(moviesList[index]);
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Color(0xFF4ACFEF),
                                    ),
                                  ),
                                ),
                              ],
                              backgroundColor: const Color(0xFF040d2e),
                            ),
                          ),
                        )),
                  ),
                );
              },
            ),
      backgroundColor: Color(0xFF05103A),
    );
  }
}
