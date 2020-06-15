void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 Complete');
}

Future<String> task2() async {
  String result;
  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 Complete');
  });
  //return Future.value(result);
  return result;
  //sleep(threeSeconds);
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 Complete with $task2Data');
}
