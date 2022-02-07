import 'dart:io';

void main() {
  performtask();
}

void performtask() async {
  task1();
  String taskresult = await task2();
  task3(taskresult);
}

void task1() {
  String result = "task 1 data";
  print(result);
}

Future<String> task2() async {
  String result;
  Duration inseconds = Duration(seconds: 3);
  await Future.delayed(inseconds, () {
    result = "task 2 data";
    print(result);
  });
  return result;
}

void task3(String task2data) {
  String result = "task 3 $task2data";
  print(result);
}
