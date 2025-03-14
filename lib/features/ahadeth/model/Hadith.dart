class Hadith {
  final String title;
  final String arab;

  Hadith({
    required this.title,
    required this.arab,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      title: json['title'] ?? '',
      arab: json['arab'] ?? '',
    );
  }
}
