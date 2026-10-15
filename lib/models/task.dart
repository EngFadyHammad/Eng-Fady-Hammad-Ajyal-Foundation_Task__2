import 'package:hive/hive.dart';

class Task extends HiveObject {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});
}
