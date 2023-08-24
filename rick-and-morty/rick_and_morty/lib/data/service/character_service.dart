import 'package:http/http.dart';

abstract class CharacterService {
  // o [] dentro do parametro, diz que é um argumento opcional
  Future<void> getCharacters([int page = 1]);
}

class CharacterServiceImpl implements CharacterService {
  const CharacterServiceImpl(this._client);

  // o _ é pq consta que vai ser um atributo privado
  final Client _client;
  
  @override
  Future<void> getCharacters([int page = 1]) async {
    final response = await _client.get(
      Uri.https(
        "rickandmortyapi.com", 
        '/api/character',
        {'page': '$page'},
        ),
      );

      print('Response: ${response.body}');
      print('Response: ${response.statusCode}');

  }

}