import 'package:app_soft_wars/api/http_services.dart';
import 'package:app_soft_wars/models/tasks_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class SingleTaskPage extends StatefulWidget {
  const SingleTaskPage({Key? key}) : super(key: key);

  @override
  State<SingleTaskPage> createState() => _SingleTaskPageState();
}

class _SingleTaskPageState extends State<SingleTaskPage> {
  HttpService? http;
  Task? task;
  TasksResponse? tasksResponse;

  bool isLoading = false;

  Future getTask() async {
    Response response;
    try {
      isLoading = true;

      response = await http!.getRequest('tasks/1');

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          task = Task.fromJson(response.data);
        });
      } else if (response.statusCode == 405) {
      } else if (response.statusCode == 403) {
      } else if (response.statusCode == 400) {
      } else if (response.statusCode == 500) {
      } else if (response.statusCode == 404) {
      } else {}
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Single task'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
