import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_function.dart';
import '../custom_shapes.dart/containers/rounded_container.dart';

class GroupLedgerMobileCard extends StatelessWidget {
  final String transactionId;
  final String groupAccount;
  final Color color;
  final String transactionType;
  final String source;
  final String amount;
  final String transactionReference;
  final String date;
  const GroupLedgerMobileCard({super.key,
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
        width: double.infinity,
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
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
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                          'Transaction ID',
                          style: Theme.of(context).textTheme.bodySmall,
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
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,
                        ),
          
                        const SizedBox(height: Sizes.spaceBtwItems),
                        Text(
                          'Reference',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          transactionReference,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: true,
                          maxLines: 2,),
                ]
              ),
          
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                                '\u20A6$amount',
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    overflow: TextOverflow.ellipsis,
                                ),),
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
                              
                      ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
