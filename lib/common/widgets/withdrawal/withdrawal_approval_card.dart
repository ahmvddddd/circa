import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../../custom_shapes.dart/containers/rounded_container.dart';

class WithdrawalApprovalCard extends StatelessWidget {
  final String name;
  final String status;
  final Color color;
  const WithdrawalApprovalCard({
    super.key,
    required this.name,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.spaceBtwItems),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: dark
                ? Theme.of(context).textTheme.bodySmall
                : Theme.of(context).textTheme.bodyMedium,
          ),
          RoundedContainer(
            width: 100,
            radius: Sizes.cardRadiusSm,
            padding: const EdgeInsets.all(Sizes.xs),
            backgroundColor: color.withValues(alpha: 0.2),
            child: Center(
              child: Text(
                status,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
