// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade400,
//         title: const Text(
//           'Profile',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children:[
//             const SizedBox(height: 30),
//             const CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage(
//                 'assets/images/Chat-lab-bubble-logo-white-background-not-tail.mXlmTIlh.png',
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'خالد رضا',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               'zzd@gmail.com',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 30),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children:[
//                       CraftInfoItem(Icons.work_outlined, 'المهنه', 'سباك'),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: const [
//                       //     Text('Password:', style: TextStyle(fontSize: 16, color: Colors.black87)),
//                       //     Text('••••••••', style: TextStyle(fontSize: 16, color: Colors.grey)),
//                       //     Text('Change', style: TextStyle(fontSize: 16, color: Colors.blue)),
//                       //   ],
//                       // ),
//                       const Divider(height: 25),
//                       CraftInfoItem(Icons.phone, 'رقم الهاتف', '01023469761'),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: const [
//                       //     Text('01023469761', style: TextStyle(fontSize: 16, color: Colors.grey)),
//                       //     Text(':رقم الهاتف', style: TextStyle(fontSize: 16, color: Colors.black87)),
//                       //
//                       //   ],
//                       // ),
//                       const Divider(height: 25),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: const [
//
//                           Text('المنوفيه -قويسنا', style: TextStyle(fontSize: 16, color: Colors.grey)),
//                           Row(
//                             children: [
//                               Text(': العنوان', style: TextStyle(fontSize: 16, color: Colors.black87)),
//                               SizedBox(width: 5,),
//                               Icon(Icons.location_on_outlined, color: Colors.black),
//
//                             ],
//                           ),
//
//                         ],
//                       ),
//                       const Divider(height: 25),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: const <Widget>[
//                       //     Text('Address:', style: TextStyle(fontSize: 16, color: Colors.black87)),
//                       //     Text('NY- Street 21-no 34', style: TextStyle(fontSize: 16, color: Colors.grey)),
//                       //   ],
//                       // ),
//                       //const Divider(height: 25),
//                       CraftInfoItem(Icons.logout, '', 'تسجيل الخروج')
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //   children: const <Widget>[
//                       //     Text('PostalCode', style: TextStyle(fontSize: 16, color: Colors.black87)),
//                       //     Text('9871234567', style: TextStyle(fontSize: 16, color: Colors.grey)),
//                       //   ],
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget CraftInfoItem(IconData icon, String title, String value) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:  [
//
//         Text(value, style: TextStyle(fontSize: 16, color: Colors.grey)),
//         Row(
//           children: [
//             Text(title, style: TextStyle(fontSize: 16, color: Colors.black87)),
//             SizedBox(width: 5,),
//             Icon(icon, color: Colors.black),
//
//           ],
//         ),
//
//       ],
//     );
//   }
// }