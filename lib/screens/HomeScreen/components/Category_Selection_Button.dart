import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectedIndex = 0; // Keep track of the selected button index

  Widget categoryButton(String text, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; // Update selected button
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.w),
        decoration: BoxDecoration(
          color: isSelected ? btncolor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 11),
          child: Text(text,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 12.sp)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        categoryButton('All Shoes', 0),
        categoryButton('Outdoor', 1),
        categoryButton('Tennis', 2),
      ],
    );
  }
}
