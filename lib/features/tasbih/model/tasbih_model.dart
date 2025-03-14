class Tasbih {
  final int id;
  final String name;
  final int counter;
  final int favorite;

  Tasbih({
    required this.id,
    required this.name,
    required this.counter,
    required this.favorite,
  });

  // دالة لإنشاء نسخة من Tasbih مع القيم المعدلة
  Tasbih copyWith({
    int? id,
    String? name,
    int? counter,
    int? favorite,
  }) {
    return Tasbih(
      id: id ?? this.id,
      name: name ?? this.name,
      counter: counter ?? this.counter,
      favorite: favorite ?? this.favorite,
    );
  }
}
