import 'package:flutter/material.dart';
import '../../utils/constants/custom_colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';
import '../custom_shapes.dart/containers/rounded_container.dart';

class GroupLedgerDesktopCard extends StatelessWidget {
  final String transactionId;
  final String groupAccount;
  final Color color;
  final String transactionType;
  final String source;
  final String amount;
  final String transactionReference;
  final String date;
  const GroupLedgerDesktopCard({super.key,
  required this.transactionId,
  required this.groupAccount,
  required this.color,
  required this.transactionType,
  required this.source,
  required this.amount,
  required this.transactionReference,
  required this.date
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(Sizes.sm),
      child: RoundedContainer(
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
        backgroundColor: dark ? Color(0xFF1A1A2E) : Colors.white,
        boxShadow: !dark
            ? const [
                BoxShadow(
                  color: CustomColors.darkBackground,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ]
            : [],
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              //1st Row
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction ID',
                          style: dark ?Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          transactionId,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
          
                        const SizedBox(height: Sizes.sm),
                        Text(
                          'Group Account',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          groupAccount,
                          style:  dark ?Theme.of(context).textTheme.bodySmall!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          )
                          : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
          
                  const SizedBox(width: Sizes.spaceBtwItems),
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction Type',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        RoundedContainer(
                          width: 80,
                          radius: Sizes.cardRadiusSm,
                          padding: const EdgeInsets.all(Sizes.xs),
                          backgroundColor: color.withValues(alpha: 0.2),
                          child: Center(
                            child: Text(
                              transactionType,
                              style: Theme.of(
                                context,
                              ).textTheme.labelMedium!.copyWith(color: color),
                            ),
                          ),
                        ),
          
                        const SizedBox(height: Sizes.sm),
                        Text(
                          'Source',
                          style: dark ? Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          source,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          
              //2nd Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Amount',
                          style: dark ? Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '\u20A6$amount',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Reference',
                          style: dark ? Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          transactionReference,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,),
                        const SizedBox(height: Sizes.sm),
                        Text(
                          'Date',
                          style: dark ? Theme.of(context).textTheme.bodySmall
                          : Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          date,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
