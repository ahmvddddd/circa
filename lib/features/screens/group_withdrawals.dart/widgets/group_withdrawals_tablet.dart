import 'package:flutter/material.dart';
import '../../../../common/widgets/groups/filter_row.dart';
import '../../../../common/widgets/groups/group_withdrawal_list_card.dart';
import '../../../../utils/constants/sizes.dart';

class GroupWithdrawalsTablet extends StatelessWidget {
  const GroupWithdrawalsTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Sizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: Sizes.spaceBtwItems,),
              
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterRow(
                    text: "PENDING", 
                    selected: true),
                  const SizedBox(width: Sizes.xs),
                  FilterRow(
                    text: "APPROVED", 
                    selected: false),
                  const SizedBox(width: Sizes.xs),
                  FilterRow(
                    text: "DECLINED", 
                  selected: false),
                  const SizedBox(width: Sizes.xs),
                  FilterRow(
                    text: "PAID", 
                    selected: false),
                ],
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            GroupWithdrawalListCard(
              amount: "830.00",
              reason: "Software License Renewal",
              name: 'Novas Catering',
              requestedBy: "Ava Williams",
              status: "APPROVED",
              date: "2023-10-25",
              color: Colors.blue,
              approvals: '3/3',
              progress: 0.8,
            ),
              
            const SizedBox(height: Sizes.sm),
            GroupWithdrawalListCard(
              amount: "3,510.00",
              name: "Marketing Solutions",
              reason: "QA Campaign Budget",
              requestedBy: "Noah Brown",
              status: "PAID",
              date: "2023-10-22",
              color: Colors.green,
              approvals: '3/3',
              progress: 1.0,
            ),
              
            const SizedBox(height: Sizes.sm),
            GroupWithdrawalListCard(
              amount: "210,000.00",
              name: "John Doe",
              reason: "Expense Reimbursement",
              requestedBy: "Sophia Garcia",
              status: "DECLINED",
              date: "2023-10-21",
              color: Colors.red,
              approvals: '0/3',
              progress: 0.0,
            ),
              
            const SizedBox(height: Sizes.sm),
            GroupWithdrawalListCard(
              amount: "5,000.00",
              name: "Cloud Services LLC",
              reason: "Server Infrastructure Upgrade",
              requestedBy: "Mason Jones",
              status: "PENDING",
              date: "2023-10-20",
              color: Colors.orange,
              approvals: '2/3',
              progress: 0.5,
            ),
              
            
          ],
        ),
      ),
    );
  }
}
