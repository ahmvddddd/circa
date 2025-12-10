import 'package:circa/utils/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  final String text;
  final bool selected;
  const FilterRow({super.key,
  required this.text,
  required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? CustomColors.info : const Color(0xFF21262D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: selected ? Colors.white : Colors.white70,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}