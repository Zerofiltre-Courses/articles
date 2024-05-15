// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Movie {
  final String cover;
  final String title;
  final String comment;
  Movie({
    required this.cover,
    required this.title,
    required this.comment,
  });

  Movie copyWith({
    String? cover,
    String? title,
    String? comment,
  }) {
    return Movie(
      cover: cover ?? this.cover,
      title: title ?? this.title,
      comment: comment ?? this.comment,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cover': cover,
      'title': title,
      'comment': comment,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      cover: map['cover'] as String,
      title: map['title'] as String,
      comment: map['comment'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) =>
      Movie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Movie(cover: $cover, title: $title, comment: $comment)';

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.cover == cover &&
        other.title == title &&
        other.comment == comment;
  }

  @override
  int get hashCode => cover.hashCode ^ title.hashCode ^ comment.hashCode;
}
