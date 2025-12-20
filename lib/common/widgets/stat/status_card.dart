import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';

class StatusCard extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final String title;
  final String value;

  const StatusCard({
    super.key,
    required this.iconColor,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
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
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 22, color: iconColor),
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                  const SizedBox(height: Sizes.sm),
                  Text(value, style: 
                  dark ? Theme.of(context).textTheme.bodySmall
                  : Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
