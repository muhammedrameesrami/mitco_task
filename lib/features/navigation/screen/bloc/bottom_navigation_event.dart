part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationEvent {}
final class BotomNavigationIndexUpdate extends BottomNavigationEvent{
  final int index;
  BotomNavigationIndexUpdate({required this.index});
}