import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
          )
        ]),
        child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Checkbox(
                  value: taskComplete,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                //task name
                Text(
                  taskName,
                  style: TextStyle(
                      decoration: taskComplete
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            )),
      ),
    );
  }
}
