// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty/details/data/details_repository.dart';
import 'package:rick_and_morty/details/data/service/character_details_response.dart';

part 'character_details_event.dart';
part 'character_details_state.dart';

@injectable
class CharacterDetailsBloc
    extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc(this._repository)
      : super(CharacterDetailsInitialState()) {
    on(_onRequestEvent);
  }

  final CharacterDetailsRepository _repository;

  Future<void> _onRequestEvent(CharacterDetailsRequestEvent event,
      Emitter<CharacterDetailsState> emitter) async {
    try {
      emit(CharacterDetailsLoadingState());
      emit(CharacterDetailsResultState(
          await _repository.getCharacterDetails(event.id)));
    } catch (_) {
      emit(CharacterDetailsErrorState());
    }
  }
}
