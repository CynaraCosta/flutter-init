extension StringExtensions on String {
  String getInternetImageTMDB() {
    const urlPatternTMDB = 'https://image.tmdb.org/t/p/w780';
    return ('$urlPatternTMDB$this');
  }
}
