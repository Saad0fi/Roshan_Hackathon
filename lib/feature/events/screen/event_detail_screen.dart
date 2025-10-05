import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roshan/feature/events/screen/participate_screen.dart';
import 'package:roshan/feature/theme/app_color.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.whiteColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 1430106656.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: AppColor.blackColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.lightGreyColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "فعالية",
                              style: TextStyle(
                                color: AppColor.blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: AppColor.purpleColor,
                                size: 30,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                CupertinoIcons.arrowshape_turn_up_right,
                                color: AppColor.purpleColor,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Text(
                        "حوامة العيد",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackColor,
                          fontFamily: 'Almarai',
                        ),
                      ),
                      SizedBox(height: 15),

                      Text(
                        "تعالوا نعيش جوّ العيد السعيد! حوّامة العيد لفّة جماعية بالحي مع أكياس الحلا وضحكات الأطفال. لا تفوّت المتعة وشارك  بفرحة حيّك! 🎉🍬!",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.lightGreyColor,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 25),

                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: AppColor.greenColor,
                                  size: 20,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "سدرة",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_offer,
                                  color: AppColor.greenColor,
                                  size: 20,
                                ),
                                Text(
                                  "مجانية",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: AppColor.greenColor,
                                  size: 20,
                                ),
                                Text(
                                  "15 يناير",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: AppColor.greenColor,
                                size: 20,
                              ),

                              Text(
                                "8 م - 12 ص",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),

                      InkWell( onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => ParticipateScreen(),
                          ),
                        );
                      },
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                            color: AppColor.purpleColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.purpleColor.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "شارك بالفعالية",
                              style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Almarai',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      Text(
                        "فعاليات مشابهه",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackColor,
                        ),
                      ),
                      SizedBox(height: 15),

                      Row(
                        children: [
                          Expanded(
                            child: Image(
                              image: AssetImage("assets/images/activity3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Image(
                              image: AssetImage("assets/images/activity1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
