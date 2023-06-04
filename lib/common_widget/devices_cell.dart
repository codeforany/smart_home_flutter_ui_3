import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class DevicesCellButton extends StatelessWidget {
  final String name;
  final String img;

  final VoidCallback onPressed;
  const DevicesCellButton(
      {super.key,
      required this.name,
      required this.img,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)] ,
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: TColor.text,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  img,
                  width: 80,
                  height: 80,
                  fit: BoxFit.fitWidth,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
