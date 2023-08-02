import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  const Grocery({
    super.key,
    required this.title,
    required this.quantity,
    required this.color,
  });

  final String title;
  final int quantity;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 8, 20, 8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(5)),
                color: color,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 25),
            ),
            const SizedBox(width: 25),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            Text('$quantity'),
          ],
        ),
      ),
    );
  }
}
