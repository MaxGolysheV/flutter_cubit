part of 'click_cubit.dart';

@immutable
abstract class ClickState {}

class ClickInitial extends ClickState {}

class ClickError   extends ClickState{
  final String message;

  ClickError(this.message);
}

class Click extends ClickState {
   int count;
  Click(this.count);
}


class myClick extends ClickState
{
 int count;
 String path;
 myClick(this.count, this.path);
}