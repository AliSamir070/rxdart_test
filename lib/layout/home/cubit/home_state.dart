abstract class HomeStates{}
class HomeInitialState extends HomeStates{}
class HomeSearchSuccessfulState extends HomeStates{}
class HomeSearchLoadingState extends HomeStates{}
class HomeSearchErrorState extends HomeStates{
  String message;
  HomeSearchErrorState(this.message);
}