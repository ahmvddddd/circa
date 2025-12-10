import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';

class GroupTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String badge;

  const GroupTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(Sizes.sm),
      decoration: BoxDecoration(
        color: dark ? Color(0xFF1A1A2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: !dark
            ? const [
                BoxShadow(
                  // color: Color(0x11000000),
                  color: Colors.black,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ]
            : [],
      ),
      child: Row(
        children: [
          // Icon bubble
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: dark
                  ? Colors.white.withValues(alpha: 0.05)
                  : Color(0xFFF2F2F7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.group,
              color: dark ? Colors.white70 : Colors.black54,
            ),
          ),

          const SizedBox(width: 16),

          // Titles
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 4),
                Text(subtitle, style: 
                dark ?
                Theme.of(context).textTheme.labelMedium: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ),

          // Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: dark
                  ? Color(0xFF30304A)
                  : Color(0xFF1A1A2E).withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              badge,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: dark ? Colors.white : Color(0xFF5A3D9E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
