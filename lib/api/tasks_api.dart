import 'package:app_soft_wars/models/task_response.dart';
import 'package:dio/dio.dart';

class TasksApi {

  TasksApi() {
    _dio = Dio();
  }
  final String _url = 'https://y3u59pjfxn3n.softwars.com.ua/tasks';
  Dio? _dio;

  Future<List<Task>?> fetchUserTasks() async {
    try {
      Response response = await _dio!.get(_url);
      TaskResponse taskResponse = TaskResponse.fromJson(response.data);
      return taskResponse.data;
    } on DioError catch (e) {
      print(e);
    }
    return null;
  }
}
