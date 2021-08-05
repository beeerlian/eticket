import 'package:flutter/material.dart';
import 'package:wisata_app/pages/detail_screen.dart';
import 'package:wisata_app/model/kursi.dart';
import 'package:wisata_app/model/movie.dart';
import 'package:wisata_app/pages/detail_screen_hybird.dart';
import 'package:wisata_app/main.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ticketku'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            
            if (constraints.maxWidth < 640) {
              return TourismPlaceList();
            } else if (constraints.maxWidth < 888.0) {
              return TourismGridView(gridCount: 4);
            } else {
              return TourismGridView(gridCount: 6);
            }
          },
        ));
  }
}

class TourismGridView extends StatelessWidget {
  final int gridCount;
  TourismGridView({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GridView.count(
            crossAxisCount: gridCount,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: dataMovieList.map((movie) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreenHybrid(movie: movie);
                  }));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          movie.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          movie.name,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Text(
                          movie.location,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final MovieData movie = dataMovieList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreenHybrid(movie: movie);
            }));
          },
          child: Card(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: Image.asset(movie.imageAsset)),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        movie.name,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(movie.location)
                    ],
                  ),
                ),
              )
            ],
          )),
        );
      },
      itemCount: dataMovieList.length,
    );
  }
}
