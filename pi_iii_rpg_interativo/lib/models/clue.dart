class Clue {
  final String id;
  final string name;
  final String description;
  final String location;
  final String significance;
  bool isFound;

  Clue({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.significance,
    this.isFound = false,
  });
}
