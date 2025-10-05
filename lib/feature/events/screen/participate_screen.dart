import 'package:flutter/material.dart';

class ParticipateScreen extends StatelessWidget {
  const ParticipateScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130,
        flexibleSpace: Image(image: AssetImage("assets/images/image 7.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50,),

              Row(spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "تم تأكيد تسجيلك بنجاح في فعالية",
                    style: TextStyle(
                      color: const Color(0xFF1E1E2C),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 1.67,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_forward_ios)),
                ],),


SizedBox(height: 30,),
              Text(
                "حوامة العيد",
                style: TextStyle(
                  color: const Color(0xFFB57EDC),
                  fontSize: 24,
                  fontFamily: 'NotoSansArabic',
                  fontWeight: FontWeight.w700,
                  height: 1.67,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "فضلًا اعرض الباركود الظاهر أسفل الشاشة عند نقطة التحقّق وقت الوصول",
                style: TextStyle(
                  color: const Color(0xFF1E1E2C),
                  fontSize: 14,
                  fontFamily: 'NotoSansArabic',
                  fontWeight: FontWeight.w400,
                  height: 1.29,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "    🎉🍬  نشوفك على خير! ",
                style: TextStyle(
                  color: const Color(0xFF1E1E2C),
                  fontSize: 14,
                  fontFamily: 'NotoSansArabic',
                  fontWeight: FontWeight.w400,
                  height: 1.29,
                ),
                textAlign: TextAlign.center,
              ),
            SizedBox(height: 50,),
            Image(image: AssetImage("assets/images/Vector (20).png"))
            ],
          ),
        ),
      ),
    );
  }
}
