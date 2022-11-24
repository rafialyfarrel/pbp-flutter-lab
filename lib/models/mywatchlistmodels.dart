import 'dart:convert';

Mywatchlist mywatchlistFromJson(String str) => Mywatchlist.fromJson(json.decode(str));

String mywatchlistToJson(Mywatchlist data) => json.encode(data.toJson());

class Mywatchlist {
    Mywatchlist({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    bool watched;
    String title;
    int rating;
    DateTime releaseDate;
    String review;

    factory Mywatchlist.fromJson(Map<String, dynamic> json) => Mywatchlist(
        watched: json['fields']['watched'],
        title: json['fields']['title'],
        rating: json['fields']['rating'],
        releaseDate: DateTime.parse(json['fields']['release_date']),
        review: json['fields']['review'],
    );

    Map<String, dynamic> toJson() => {
        'watched': watched,
        'title': title,
        'rating': rating,
        'release_date': "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        'review': review,
    };
}