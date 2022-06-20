import 'package:app_soft_wars/models/task.dart';


part 'tasks_response.g.dart';


class TasksResponse {
  factory TasksResponse.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseFromJson(json);
  TasksResponse();


  List<Task>? listOfTasks;
  String? error;

  Map<String, dynamic> toJson() => _$TasksResponseToJson(this);
}
