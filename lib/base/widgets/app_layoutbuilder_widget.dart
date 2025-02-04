import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool? isColor;
  const AppLayoutbuilderWidget({super.key, required this.randomDivider,this.isColor, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constrains.constrainWidth() / randomDivider).floor(),
              (index) => SizedBox(width: width,height:1,child:  DecoratedBox(decoration: BoxDecoration(
                color: isColor == null ? Colors.white : Colors.grey.shade300
              )),)));
    });
  }
}
