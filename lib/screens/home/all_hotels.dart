import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';


class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          title: Text("All Hotels"),
          backgroundColor: AppStyles.bgColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.9),
             itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelList[index];
                return HotelGridView(hotel:singleHotel);
              }),
        ));
  }
}



class HotelGridView extends StatelessWidget {
  final Map<String,dynamic> hotel;
  final bool wholeScreen;
  const HotelGridView({super.key, required this.hotel, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 8),
   
      height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image:  DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assets/images/${hotel["image"]}"))),
            ),
          ),
         const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
             hotel["place"],
              style:
                  AppStyles.headLineStyle3.copyWith(color: AppStyles.kakiColor),
            ),
          ),
        
         Row(
          children: [
             Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style:
                  AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
   
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel["price"].toString()}/night",
              style:
                  AppStyles.headLineStyle4.copyWith(color: AppStyles.kakiColor),
            ),
          )
          ],
         )
        ],
      ),
    );
  }
}
