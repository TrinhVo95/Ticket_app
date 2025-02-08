import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/heading_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
         const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            children: [
              //show the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(
                    AppMedia.logo
                  ))
                ),
              ),
             const SizedBox(width: 10,),
              //show column text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(text: 'Book Tickets',isColor: false,),
                  // Text("Book Tickets", style: AppStyles.headLineStyle1,),
                  Text("New-York",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  SizedBox(height: 8,),
                  Container(
                    // width: 200,
                    // height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyles.profileColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,),
                        ),
                        SizedBox(width: 5,),
                        Text("Premium status", style: TextStyle(color: AppStyles.profileTextColor,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}