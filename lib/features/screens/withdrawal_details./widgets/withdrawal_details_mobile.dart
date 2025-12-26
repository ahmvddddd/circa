import 'package:flutter/material.dart';
import '../../../../common/custom_shapes.dart/containers/rounded_container.dart';
import '../../../../common/widgets/withdrawal/withdarawal_details_row.dart';
import '../../../../common/widgets/withdrawal/withdrawal_approval_card.dart';
import '../../../../common/widgets/withdrawal/withdrawal_card.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class WithdrawalDetailsMobile extends StatelessWidget {
  const WithdrawalDetailsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: Sizes.spaceBtwItems,),
                    WithdrawalCard(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Text(
                              'Primary Details',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(fontSize: 16),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WithdarawalDetailsRow(
                                  label: "Withdrawal ID",
                                  value: "W-12345",
                                ),
                                WithdarawalDetailsRow(
                                  label: "Group ID",
                                  value: "GRP-ABCDE",
                                ),
                                WithdarawalDetailsRow(
                                  label: "Amount",
                                  value: "\u20A65,000.00",
                                ),
                                WithdarawalDetailsRow(
                                  label: "Beneficiary",
                                  value: "John Doe",
                                ),

                                const SizedBox(height: Sizes.spaceBtwItems),
                                const Divider(),
                                Text(
                                  'Reason',
                                  style: dark
                                      ? Theme.of(context).textTheme.bodySmall
                                      : Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: Sizes.sm),
                                Text(
                                  'Picnic refreshment and supplies',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  softWrap: true,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: Sizes.spaceBtwSections),
                    WithdrawalCard(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Text(
                              'Approvals',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(fontSize: 16),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Column(
                              children: [
                                WithdrawalApprovalCard(
                                  name: "Test User1",
                                  status: "Approved",
                                  color: Colors.green,
                                ),
                                WithdrawalApprovalCard(
                                  name: "Test User2",
                                  status: "Pending",
                                  color: Colors.orange,
                                ),
                                WithdrawalApprovalCard(
                                  name: "Test User3",
                                  status: "Pending",
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: Sizes.spaceBtwSections),

                Column(
                  children: [
                    WithdrawalCard(
                      padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Status',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge!.copyWith(fontSize: 16),
                          ),

                          const SizedBox(height: Sizes.spaceBtwItems),
                          RoundedContainer(
                            width: 150,
                            radius: Sizes.cardRadiusSm,
                            padding: const EdgeInsets.all(Sizes.sm),
                            backgroundColor: Colors.orange.withValues(
                              alpha: 0.2,
                            ),
                            child: Center(
                              child: Text(
                                'Pending Approval',
                                style: Theme.of(context).textTheme.bodySmall!
                                    .copyWith(color: Colors.orange),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Sizes.spaceBtwSections),

                    WithdrawalCard(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Text(
                              'Important Dates',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.copyWith(fontSize: 16),
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(Sizes.spaceBtwItems),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WithdarawalDetailsRow(
                                  label: "Created",
                                  value: "14  October 2025",
                                ),
                                WithdarawalDetailsRow(
                                  label: "Expires",
                                  value: "28 November 2025",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: Sizes.spaceBtwSections),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
