part of 'activity.dart';
class Iteration{
  String? newText;
  bool skipable;
  Widget? newActiveZone;
  Widget? newButton1;
  Widget? newButton2;
  Iteration(
      {
        this.newText,
        this.newActiveZone,
        this.newButton1,
        this.newButton2,
        this.skipable = true
      });
}

