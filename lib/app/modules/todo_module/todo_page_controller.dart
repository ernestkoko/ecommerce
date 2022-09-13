import 'package:ecommerce/app/data/models/todo.dart';
import 'package:ecommerce/app/modules/todo_module/todo_page_provider.dart';
import 'package:get/get.dart';

class TodoPageController extends GetxController with StateMixin<List<Todo>> {
  late final int id;

  @override
  void onInit() {
    super.onInit();

    id = Get.arguments;

  }

  @override
  onReady() {
    super.onReady();
    _getTodo();
  }

  _getTodo() async {
    final todos = <Todo>[];
    try {
      change(todos, status: RxStatus.loading());
      final result = await TodoPageProvider.getTodo(id: id);
      for (final map in result) {
        todos.add(Todo.fromMap(map));
      }
      change(todos, status: RxStatus.success());
      if (todos.isEmpty) {
        change(todos, status: RxStatus.empty());
      }
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }
}
