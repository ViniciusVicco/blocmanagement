import 'package:equatable/equatable.dart';

class Pokemon {
  late String name;
  late String url;

  Pokemon({required this.name, required this.url});

  Pokemon.safeInstance() {
    url = "";
    name = "";
  }

  Pokemon.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    name = json["name"];
  }
}
