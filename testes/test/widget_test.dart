// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:testes/character.dart';
import 'package:testes/item.dart';


void main() {
  test('should add item to list', () {

      Character character = Character(name: 'Herói', level: 1, items: []);
      Item espada = Item(nome: 'Espada', dano: 10);

      character.addItem(espada);

      expect(character.items.contains(espada), isTrue);
      expect(character.items.length, equals(1));
  });

  test('should remove item', () {

      Item escudo = Item(nome: 'Escudo', dano: 5);
      Character character = Character(name: 'Herói', level: 1, items: [escudo]);

      character.removeItem(escudo);

      expect(character.items.contains(escudo), isFalse);
      expect(character.items.length, equals(0));
  });
}
