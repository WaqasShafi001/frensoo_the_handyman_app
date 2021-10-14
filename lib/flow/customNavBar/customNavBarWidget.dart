// // ignore_for_file: file_names, prefer_const_constructors, prefer_if_null_operators, unnecessary_this, sized_box_for_whitespace
// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// class CustomnNavbarWidget extends StatelessWidget {
//   final int? selectedIndex;
//   final List<PersistentBottomNavBarItem>? items;
//   final ValueChanged<int>? onItemSelected;

//   const CustomnNavbarWidget(
//       {Key? key, this.selectedIndex, this.items, this.onItemSelected})
//       : super(key: key);

//   Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
//     return Container(
//       alignment: Alignment.center,
//       height: 60.0,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Flexible(
//             child: IconTheme(
//               data: IconThemeData(
//                   size: 26.0,
//                   color: isSelected
//                       ? (item.activeColorSecondary == null
//                           ? item.activeColorPrimary
//                           : item.activeColorSecondary)
//                       : item.inactiveColorPrimary == null
//                           ? item.activeColorPrimary
//                           : item.inactiveColorPrimary),
//               child: item.icon,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Material(
//               type: MaterialType.transparency,
//               child: FittedBox(
//                   child: Text(
//                 item.title!,
//                 style: TextStyle(
//                     color: isSelected
//                         ? (item.activeColorSecondary == null
//                             ? item.activeColorPrimary
//                             : item.activeColorSecondary)
//                         : item.inactiveColorPrimary,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12.0),
//               )),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Container(
//         width: double.infinity,
//         height: 60.0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: items!.map((item) {
//             int index = items!.indexOf(item);
//             return Flexible(
//               child: GestureDetector(
//                 onTap: () {
//                   this.onItemSelected!(index);
//                 },
//                 child: _buildItem(
//                   item,
//                   selectedIndex == index,

//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
