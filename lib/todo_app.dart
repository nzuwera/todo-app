import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/utils/theme/theme.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: TAppTheme.lightTheme(context),
          darkTheme: TAppTheme.darkTheme(context),
          home: Scaffold(
            appBar: AppBar(title: const Text('Todo App')),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                50,
                (index) => const Expanded(
                  child: Icon(Icons.star, color: Colors.yellow),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
            ),
          ),
        );
      },
    );
  }
}
