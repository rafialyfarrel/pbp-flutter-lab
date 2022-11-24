import 'package:counter_7/models/mywatchlistmodels.dart';
import 'package:counter_7/utils/globals.dart';
import 'package:counter_7/widgets/detailattribute.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.data,
  });

  final Mywatchlist data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const DrawerApp(
        route: 'detail-page',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 30, top:10),
                        child: Text(
                          data.title,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
            
                  DetailAttribute(name: 'Release Date', value: '${data.releaseDate}'),
                  DetailAttribute(name: 'Rating', value: '${data.rating}/5'),
                  DetailAttribute(
                    name: 'Status',
                    value: data.watched ? 'watched' : 'Not watched',
                  ),
                  const Text(
                    'Review:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      data.review,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
              ),
              child: const Text(
                'Back',
              ),
            ),
          ],
        ),
      ),
    );
  }
}