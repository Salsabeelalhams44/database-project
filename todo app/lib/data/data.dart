import 'package:flutter/widgets.dart';
import 'package:note_app/modules/archive_tasks/archive_tasks_screen.dart';
import 'package:note_app/modules/done%20tasks/done_tasks_screen.dart';
import 'package:note_app/modules/new%20tasks/new_tasks_screen.dart';

List <Widget> screens =[
  NewTaskScreen(),
  DoneTaskScreen(),
  ArchiveTaskScreen(),
];

List <String> titles= [
  'New Tasks',
  'Done Tasks',
  'Archive Tasks',
];