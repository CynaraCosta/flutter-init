class Quote {

  String text;
  String? author;

  Quote({required this.text, String? author}) {
    this.author = author!;
  }

}