import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';
import '../custom_shapes.dart/containers/rounded_container.dart';

class GroupWithdrawalListCard extends StatelessWidget {
  final String amount;
  final String reason;
  final String name;
  final String requestedBy;
  final String status;
  final Color color;
  final String date;
  final String approvals;
  final double progress;
  const GroupWithdrawalListCard({
    super.key,
    required this.amount,
    required this.reason,
    required this.name,
    required this.requestedBy,
    required this.status,
    required this.date,
    required this.color,
    required this.approvals,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(Sizes.sm),
      child: RoundedContainer(
        backgroundColor: dark ? Color(0xFF1A1A2E) : Colors.white,
        boxShadow: !dark
            ? const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ]
            : [],
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u20A6$amount',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontSize: 18),
                ),
                Text(
                  name,
                  style: dark
                      ? Theme.of(context).textTheme.bodySmall
                      : Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            const SizedBox(width: Sizes.spaceBtwItems),
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reason,
                    style: dark
                        ? Theme.of(context).textTheme.bodySmall!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          )
                        : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Color(0xFF1A1A2E),
                            overflow: TextOverflow.ellipsis,
                          ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                  const SizedBox(height: Sizes.sm),
                  Row(
                    children: [
                      Text(
                        'Requested By: ',
                        style: dark
                            ? Theme.of(context).textTheme.bodySmall
                            : Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Color(0xFF1A1A2E),
                              ),
                      ),
                      Text(
                        requestedBy,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                        softWrap: true,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: color.withValues(alpha: 0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(color),
                        ),
                      ),
                    ),

                    const SizedBox(width: Sizes.sm),
                    Text(
                      approvals,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                const SizedBox(height: Sizes.sm),
                Text(date, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
