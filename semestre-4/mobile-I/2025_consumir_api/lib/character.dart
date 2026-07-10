class Character {
  int id;
  String name;
  List<String> movies;
  String photoUrl;

  Character({
    required this.id,
    required this.name,
    required this.movies,
    required this.photoUrl,
  });

  // from map
  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      id: map['_id'] ?? 0,
      name: map['name'] ?? 'Unknown',
      movies: map['films'] != null
          ? List<String>.from(map['films'].map((x) => x.toString()))
          : [],
      photoUrl: map['imageUrl'] ?? '',
    );
  }

  // to map
  Map<String, dynamic> toMap() {
    return {'_id': id, 'name': name, 'films': movies, 'imageUrl': photoUrl};
  }
}
