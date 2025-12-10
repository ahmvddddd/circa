import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';

class WithdarawalDetailsRow extends StatelessWidget {
  final String label;
  final String value;
  const WithdarawalDetailsRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: dark
                ? Theme.of(context).textTheme.bodySmall
                : Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              const SizedBox(width: Sizes.sm),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,

                softWrap: true,
                maxLines: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
