import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/app/features/domain/usecases/get_characters_use_case.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_event.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCharactersUseCase getCharacters;
  final ScrollController scrollController = ScrollController();
  int _offset = 0;
  final int _limit = 20;
  bool _isLoadingMore = false;

  HomeBloc(this.getCharacters) : super(InitialHomeState()) {
    scrollController.addListener(_onScroll);

    on<FetchCharacters>((event, emit) async {
      emit(LoadingHomeState());
      final response = await getCharacters({'offset': _offset});

      if (response.$1 != null) {
        emit(FailedHomeState(response.$1.toString()));
      } else if (response.$2 != null) {
        _offset += _limit;
        emit(SuccessHomeState(response.$2!));
      } else {
        emit(FailedHomeState('Erro desconhecido'));
      }
    });

    on<PaginationCharacters>((event, emit) async {
      if (_isLoadingMore) return;
      _isLoadingMore = true;
      emit(LoadingHomeState());
      final response = await getCharacters({'offset': _offset});

      if (response.$1 != null) {
        emit(FailedHomeState(response.$1.toString()));
      } else if (response.$2 != null) {
        _offset += _limit;
        emit(SuccessHomeState(response.$2!));
      } else {
        emit(FailedHomeState('Erro desconhecido'));
      }
      _isLoadingMore = false;
    });
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      add(PaginationCharacters());
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
