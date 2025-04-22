import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {

  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem({super.key, required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imageUrl,
          width: 26,
          height: 26,
        ),
        isActive ? Container(
          width: 30,
          height: 2,
          margin: EdgeInsets.only(top: 2),
          decoration: BoxDecoration(
            color: Color(0xff7F74EB),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000),
            )
          ),
        ) : Container(),
        Spacer(),
      ],
    );
  }
}