import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          debugPrint('tile clicked');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          'check me',
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: tdRed,
          ),
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.delete),
            iconSize: 19,
            onPressed: () {
              debugPrint('delete clicked');
            },
          ),
        ),
      ),
    );
  }
}
