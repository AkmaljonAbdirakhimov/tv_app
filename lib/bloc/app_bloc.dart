import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

// app_bloc.dart
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<ChangeSection>(_handleChangeSection);
    on<UpdateSelection>(_handleUpdateSelection);
  }

  void _handleChangeSection(ChangeSection event, Emitter<AppState> emit) {
    emit(state.copyWith(
      currentSection: event.section,
      selectedCategoryIndex: 0,
      selectedItemIndex: 0,
      isInBanner: false,
    ));
  }

  void _handleUpdateSelection(UpdateSelection event, Emitter<AppState> emit) {
    emit(state.copyWith(
      selectedCategoryIndex: event.categoryIndex,
      selectedItemIndex: event.itemIndex,
      isInBanner: event.isInBanner,
    ));
  }
}
