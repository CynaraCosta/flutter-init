class Quote {

  String text;
  String? author;

  Quote({required this.text, String? author}) {
    this.author = author!;
  }

  String getAuthorValue(Quote quote) {
    if (quote.author != null) {
      return quote.author!;
    } else {
      return "Unknown Author";
    }
  }

}