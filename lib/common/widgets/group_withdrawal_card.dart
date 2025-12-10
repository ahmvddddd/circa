import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';
import '../custom_shapes.dart/containers/rounded_container.dart';

class GroupWithdrawalCard extends StatelessWidget {
  final String amount;
  final String reason;
  final String name;
  final String requestedBy;
  final String status;
  final Color color;
  final String date;
  final String approvals;
  final double progress;

  const GroupWithdrawalCard({
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
    return RoundedContainer(
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
      padding: const EdgeInsets.all(Sizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                      softWrap: true,
                      maxLines: 2,
                    ),
                    Text(
                      reason,
                      style: dark ? Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.ellipsis)
                              : Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xFF1A1A2E), overflow: TextOverflow.ellipsis,
                    ),
                    softWrap: true,
                      maxLines: 2,),

                    const SizedBox(height: Sizes.sm),
                    Row(
                      children: [
                        Text(
                              'Requested By: ',
                              style: dark ? Theme.of(context).textTheme.bodySmall
                              : Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xFF1A1A2E)),
                            ),
                        Text(
                          requestedBy,
                          style: Theme.of(context).textTheme.labelSmall!
                              .copyWith(overflow: TextOverflow.ellipsis),
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
                  Text(
                    '\u20A6$amount',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: Sizes.sm),
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
            ],
          ),

          const SizedBox(height: Sizes.spaceBtwItems),

          Row(
            children: [
              Text(approvals, style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(width: 10),
              Expanded(
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
            ],
          ),
          const SizedBox(height: Sizes.sm),
          Text(date, style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
