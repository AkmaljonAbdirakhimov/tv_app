part of 'app_bloc.dart';

abstract class AppEvent {}

class ChangeSection extends AppEvent {
  final NavigationSection section;

  ChangeSection(this.section);
}

class UpdateSelection extends AppEvent {
  final int? categoryIndex;
  final int? itemIndex;
  final bool? isInBanner;

  UpdateSelection({
    this.categoryIndex,
    this.itemIndex,
    this.isInBanner,
  });
}
