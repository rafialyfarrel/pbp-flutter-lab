import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/mywatchlistmodels.dart';

Future<List<Mywatchlist>> fetchMywatchlist() async {
    var url = Uri.parse(
      'https://bismillahgol.herokuapp.com/mywatchlist/json/',
    );
    var response = await http.get(
      url,
      headers: {
        'Access-Control-Allow-Origin': '*',
        'Content-Type': 'application/json',
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object ToDo
    List<Mywatchlist> mywatchList = [];
    for (var d in data) {
      if (d != null) {
        mywatchList.add(Mywatchlist.fromJson(d));
      }
    }

    return mywatchList;
  }