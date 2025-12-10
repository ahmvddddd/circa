// import 'package:flutter/material.dart';


// class WalletDashboardPage extends StatelessWidget {
//   const WalletDashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF4F4F8),
//       body: Row(
//         children: [
//           _buildSidebar(),
//           _buildMainContent(),
//           _buildRightPanel(),
//         ],
//       ),
//     );
//   }

//   Widget _buildSidebar() {
//     return Container(
//       width: 220,
//       color: const Color(0xFF0E0E0F),
//       padding: const EdgeInsets.symmetric(vertical: 30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _sidebarItem(Icons.dashboard, "Dashboard", isActive: false),
//           _sidebarItem(Icons.account_balance_wallet, "Wallet", isActive: true),
//           _sidebarItem(Icons.swap_horiz, "Trade"),
//           _sidebarItem(Icons.currency_exchange, "Exchange"),
//           _sidebarItem(Icons.notifications, "Notification", badge: 5),
//           _sidebarItem(Icons.store, "Marketplace"),
//           const Spacer(),
//           _sidebarItem(Icons.logout, "Log Out"),
//         ],
//       ),
//     );
//   }

//   Widget _sidebarItem(IconData icon, String label, {bool isActive = false, int badge = 0}) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Container(
//             width: 8,
//             height: 40,
//             color: isActive ? const Color(0xFF7B2CBF) : Colors.transparent,
//           ),
//           const SizedBox(width: 16),
//           Icon(icon, color: Colors.white70),
//           const SizedBox(width: 12),
//           Text(
//             label,
//             style: const TextStyle(color: Colors.white, fontSize: 15),
//           ),
//           if (badge > 0)
//             Container(
//               margin: const EdgeInsets.only(left: 8),
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//               decoration: BoxDecoration(
//                 color: Colors.purple,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 "$badge",
//                 style: const TextStyle(color: Colors.white, fontSize: 10),
//               ),
//             )
//         ],
//       ),
//     );
//   }

//   Widget _buildMainContent() {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   const CircleAvatar(radius: 18, backgroundColor: Colors.purple),
//                   const SizedBox(width: 12),
//                   const Text("Dutch Bangla Bank", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                   const Spacer(),
//                   _topButton("Send", Icons.arrow_outward, isPrimary: true),
//                   const SizedBox(width: 10),
//                   _topButton("Receive", Icons.arrow_downward),
//                 ],
//               ),
//               const SizedBox(height: 35),
//               const Text("Choose network", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//               const SizedBox(height: 15),
//               Row(
//                 children: [
//                   _networkChip("USD"),
//                   _networkChip("ARETH"),
//                   _networkChip("ZKSYNC"),
//                   _networkChip("OPTIMISM"),
//                 ],
//               ),
//               const SizedBox(height: 30),
//               _amountCard(),
//               const SizedBox(height: 20),
//               _addressCard(),
//               const SizedBox(height: 20),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF7B2CBF)),
//                   child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                     child: Text("Send"),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRightPanel() {
//     return Container(
//       width: 300,
//       padding: const EdgeInsets.all(25),
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20),
//           bottomLeft: Radius.circular(20),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: const [
//               Icon(Icons.search),
//               SizedBox(width: 10),
//               Icon(Icons.settings),
//               SizedBox(width: 10),
//               Icon(Icons.notifications_active),
//             ],
//           ),
//           const SizedBox(height: 25),
//           const Text("Total Balance", style: TextStyle(fontSize: 15, color: Colors.grey)),
//           const SizedBox(height: 5),
//           const Text("12,328.44 BDT", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 20),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             decoration: BoxDecoration(
//               color: const Color(0xFF7B2CBF),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: const Text("Mini Statement", style: TextStyle(color: Colors.white)),
//           ),
//           const SizedBox(height: 30),
//           _transactionFilter(),
//           const SizedBox(height: 20),
//           Expanded(child: _transactionList()),
//         ],
//       ),
//     );
//   }

//   Widget _networkChip(String label) {
//     return Container(
//       margin: const EdgeInsets.only(right: 10),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         border: Border.all(color: Colors.grey.shade400),
//       ),
//       child: Text(label),
//     );
//   }

//   Widget _topButton(String label, IconData icon, {bool isPrimary = false}) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//       decoration: BoxDecoration(
//         color: isPrimary ? const Color(0xFF7B2CBF) : Colors.white,
//         borderRadius: BorderRadius.circular(25),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, size: 18, color: isPrimary ? Colors.white : Colors.black),
//           const SizedBox(width: 8),
//           Text(label, style: TextStyle(color: isPrimary ? Colors.white : Colors.black)),
//         ],
//       ),
//     );
//   }

//   Widget _amountCard() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Text("Amount", style: TextStyle(fontSize: 15, color: Colors.grey)),
//           SizedBox(height: 10),
//           Text("100.902 USD", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }

//   Widget _addressCard() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Address", style: TextStyle(fontSize: 15, color: Colors.grey)),
//           const SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               hintText: "Recipient address",
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//               suffixIcon: const Icon(Icons.copy),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _transactionFilter() {
//     return Row(
//       children: [
//         _filterChip("All", Colors.purple),
//         _filterChip("In", Colors.green),
//         _filterChip("Out", Colors.red),
//       ],
//     );
//   }

//   Widget _filterChip(String label, Color color) {
//     return Container(
//       margin: const EdgeInsets.only(right: 8),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: color.withValues(alpha: 0.15),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(label, style: TextStyle(color: color)),
//     );
//   }

//   Widget _transactionList() {
//     return ListView(
//       children: [
//         _transactionItem("5783018636", "+120.00"),
//         _transactionItem("573863810", "+2,000.00"),
//         _transactionItem("5645181542", "+12,000.00"),
//         _transactionItem("5534968791", "+7,000.00"),
//       ],
//     );
//   }

//   Widget _transactionItem(String id, String amount) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       margin: const EdgeInsets.only(bottom: 12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("ID: #$id", style: const TextStyle(fontWeight: FontWeight.bold)),
//           const SizedBox(height: 6),
//           const Text("NexusPay - Receive Money"),
//           const SizedBox(height: 6),
//           Text(amount, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }
// }
