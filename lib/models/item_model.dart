class Item {
  final String id;
  final String title;
  final String description;

  Item({required this.id, required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }

  static Item fromMap(Map<String, dynamic> map, String id) {
    return Item(
      id: id,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
    );
  }
}