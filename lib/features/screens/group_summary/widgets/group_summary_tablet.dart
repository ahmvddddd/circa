import 'package:flutter/material.dart';
import '../../../../common/widgets/stat/stat_card.dart';
import '../../../../common/widgets/stat/status_card.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class GroupSummaryTablet extends StatelessWidget {
  const GroupSummaryTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.spaceBtwItems),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: Sizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatCard(title: "Balance", value: "\u20A61,234.56"),
                      const SizedBox(width: Sizes.sm),
                      StatCard(title: "Members", value: "12"),
                      const SizedBox(width: Sizes.sm),
                      StatCard(title: "Deposits", value: "34"),
                    ],
                  ),

                  const SizedBox(height: Sizes.spaceBtwSections),

                  Text(
                    "Transaction Status",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: Sizes.spaceBtwItems),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatusCard(
                        icon: Icons.flag,
                        title: "Approvals Required",
                        value: "2",
                        iconColor: Color(0xFFFFA726),
                      ),

                      const SizedBox(width: Sizes.sm),
                      StatusCard(
                        icon: Icons.hourglass_top,
                        title: "Pending",
                        value: "5",
                        iconColor: Color(0xFFFFCA28),
                      ),

                      const SizedBox(width: Sizes.sm),
                      StatusCard(
                        icon: Icons.check_circle_outline,
                        title: "Approved",
                        value: "3",
                        iconColor: Color(0xFF42A5F5),
                      ),
                    ],
                  ),

                  const SizedBox(height: Sizes.spaceBtwSections),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: dark ? Color(0xFF1A1A2E) : Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x11000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Group Details",
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: Sizes.sm),

                              Text(
                                "This fund is for final year dinner. Please submit withdrawal requests for reimbursements with receipts. View the ledger for more info on the transactions",
                                style: dark
                                    ? Theme.of(context).textTheme.bodySmall
                                    : Theme.of(context).textTheme.bodyMedium,
                              ),

                              const SizedBox(height: Sizes.spaceBtwItems),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
