import 'package:flutter/material.dart';
import '../../../../common/widgets/group_ledger_mobile_card.dart';
import '../../../../utils/constants/sizes.dart';

class GroupLedgerMobile extends StatelessWidget {
  const GroupLedgerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.spaceBtwItems),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GroupLedgerMobileCard(
                    transactionId: "TXN-${DateTime.now().millisecondsSinceEpoch}",
                    groupAccount: "GRP-12839",
                    color: Colors.green,
                    transactionType: "CREDIT",
                    source: "Wallet Top-Up",
                    amount: "45,200",
                    transactionReference: "REF-981273",
                    date: "2025-01-14 09:32 AM",
                  ),
                        
                  const SizedBox(height: Sizes.spaceBtwItems,),
                  GroupLedgerMobileCard(
                    transactionId: "TXN-83746291",
                    groupAccount: "GRP-90214",
                    color: Colors.red,
                    transactionType: "DEBIT",
                    source: "Refreshments",
                    amount: "12,800",
                    transactionReference: "REF-552781",
                    date: "2025-01-18 03:14 PM",
                  ),
                        
                  const SizedBox(height: Sizes.spaceBtwItems,),
                  GroupLedgerMobileCard(
                    transactionId: "TXN-55382144",
                    groupAccount: "GRP-44120",
                    color: Colors.green,
                    transactionType: "CREDIT",
                    source: "Member Deposit",
                    amount: "88,000",
                    transactionReference: "REF-110298",
                    date: "2025-02-02 10:51 AM",
                  ),
                        
                  const SizedBox(height: Sizes.spaceBtwItems,),
                  GroupLedgerMobileCard(
                    transactionId: "TXN-22991737",
                    groupAccount: "GRP-77001",
                    color: Colors.red,
                    transactionType: "DEBIT",
                    source: "Service Charge",
                    amount: "2,500",
                    transactionReference: "REF-772391",
                    date: "2025-02-08 06:22 PM",
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