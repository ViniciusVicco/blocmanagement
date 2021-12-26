class Pokemon {
  late String name;
  late String url;

  Pokemon({required this.name, required this.url});

  Pokemon.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    name = json["name"];
  }
}
