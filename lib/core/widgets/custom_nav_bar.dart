import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/colors_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ColorConstants.blackColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
          (index) => buildNavItem(
            context,
            index,
            [
              Icons.search,
              Icons.message,
              Icons.home,
              Icons.favorite,
              Icons.person
            ][index],
          ),
        ),
      ),
    );
  }

  buildNavItem(BuildContext context, int index, IconData iconData) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isSelected ? 50 : 40,
          width: isSelected ? 50 : 40,
          decoration: BoxDecoration(
            color: isSelected ? ColorConstants.primaryColor : Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(
            iconData,
            size: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
