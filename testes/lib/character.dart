import 'package:testes/item.dart';

class Character {
  String name;
  int level;
  List<Item> items;

  Character({
    required this.name,
    required this.level,
    required this.items,
  });

  void addItem(Item item) {
    items.add(item);
  }

  void removeItem(Item item) {
    items.remove(item);
  }
}
