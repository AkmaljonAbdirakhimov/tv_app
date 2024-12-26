// app_state.dart
part of 'app_bloc.dart';

enum NavigationSection { home, recommended }

class AppState extends Equatable {
  final NavigationSection currentSection;
  final int selectedCategoryIndex;
  final int selectedItemIndex;
  final bool isInBanner;

  const AppState({
    this.currentSection = NavigationSection.home,
    this.selectedCategoryIndex = 0,
    this.selectedItemIndex = 0,
    this.isInBanner = false,
  });

  AppState copyWith({
    NavigationSection? currentSection,
    int? selectedCategoryIndex,
    int? selectedItemIndex,
    bool? isInBanner,
  }) {
    return AppState(
      currentSection: currentSection ?? this.currentSection,
      selectedCategoryIndex:
          selectedCategoryIndex ?? this.selectedCategoryIndex,
      selectedItemIndex: selectedItemIndex ?? this.selectedItemIndex,
      isInBanner: isInBanner ?? this.isInBanner,
    );
  }

  @override
  List<Object?> get props => [
        currentSection,
        selectedCategoryIndex,
        selectedItemIndex,
        isInBanner,
      ];
}
