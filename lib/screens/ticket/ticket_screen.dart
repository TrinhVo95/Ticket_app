import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(20),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: AppStyles.headLineStyle1,
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  )),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketWhite,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        const AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2465 67899995498",
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "B78899",
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppMedia.visa,
                                    scale: 80,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: AppStyles.headLineStyle3,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Payment method",
                                style: AppStyles.headLineStyle4,
                              )
                            ],
                          ),
                          AppColumnTextLayout(
                            topText: "\$249.99",
                            bottomText: "Price",
                            alignment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ]),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: AppStyles.ticketWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      barcode: Barcode.code128(),
                      data: 'https://www.abc.com',
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,//take all available space
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
               Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[0],
                
                  )),
            ],
          ),
        TicketPositionedCircles(pos: true,),
        TicketPositionedCircles(pos: null,)

        ],
      ),
    );
  }
}
