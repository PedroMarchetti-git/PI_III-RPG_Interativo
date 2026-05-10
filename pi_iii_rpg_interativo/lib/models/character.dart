class Character {
  final String id;
  final String name;
  final String description;
  final String occupation;
  final String alibi;
  final List<String> relationships;
  final String motive;
  final bool isSuspect;
  final String imagePath;
  bool hasBeenInterrogated;

  Character({
    required this.id,
    required this.name,
    required this.description,
    required this.occupation,
    required this.alibi,
    required this.relationships,
    required this.motive,
    required this.isSuspect,
    required this.imagePath,
    this.hasBeenInterrogated = false,
  });
}