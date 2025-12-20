import 'package:flutter/material.dart';
import '../../../../common/widgets/stat/stat_card.dart';
import '../../../../common/widgets/stat/status_card.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class GroupSummaryMobile extends StatelessWidget {
  const GroupSummaryMobile({super.key});

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
                    children: [
                      StatCard(title: "Balance", value: "\u20A61,234.56"),
                    ],
                  ),

                  const SizedBox(height: Sizes.sm),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                    children: [
                      StatusCard(
                        icon: Icons.flag,
                        title: "Approvals Required",
                        value: "2",
                        iconColor: Color(0xFFFFA726),
                      ),
                    ],
                  ),

                  const SizedBox(height: Sizes.sm),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                color: Colors.black,
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
                                softWrap: true,
                                maxLines: 2,
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
