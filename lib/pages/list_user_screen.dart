import 'package:app_soft_wars/api/http_services.dart';
import 'package:app_soft_wars/models/tasks_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/task.dart';

class ListTaskScreen extends StatefulWidget {
  const ListTaskScreen({Key? key}) : super(key: key);

  @override
  State<ListTaskScreen> createState() => _ListTaskScreenState();
}

class _ListTaskScreenState extends State<ListTaskScreen> {
  bool isLoading = false;
  HttpService? http;
  TasksResponse? tasksResponse;
  List<Task>? tasks;

  @override
  void initState() {
    http = HttpService();

    getListTask();

    super.initState();
  }

  Future getListTask() async {
    Response response;
    try {
      //isLoading = true;

      response = await http!.getRequest('/tasks/');

      isLoading = false;

      if (response.statusCode == 200) {
        setState(() {
          tasksResponse = TasksResponse.fromJson(response.data);
          tasks = tasksResponse!.listOfTasks;
        });
      } else if (response.statusCode == 405) {
      } else if (response.statusCode == 403) {
      } else if (response.statusCode == 400) {
      } else if (response.statusCode == 500) {
      } else if (response.statusCode == 404) {
      } else {
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get tasks'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : tasks != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    final task = tasks![index];

                    return ListTile(
                      title: Text(task.name),
                      subtitle: Text('Status: ${task.status}'),
                      leading: Text(task.description!),
                    );
                  },
                  itemCount: tasks!.length,
                )
              : const Center(
                  child: Text('No User Object'),
                ),
    );
  }
}
