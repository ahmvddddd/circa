import 'package:flutter/material.dart';

import '../../utils/helpers/helper_function.dart';

class StatCard extends StatelessWidget {
  final String value;
  final String title;
  const StatCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: dark ? Color(0xFF1A1A2E) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: dark ? Theme.of(
                context,
              ).textTheme.labelMedium
              : Theme.of(
                context,
              ).textTheme.labelLarge
            ),
            const SizedBox(height: 6),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
