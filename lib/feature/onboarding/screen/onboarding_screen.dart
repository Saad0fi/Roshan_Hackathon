import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../authentication/screen/authentication_screen.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import '../../theme/app_color.dart';
import '../../common/widget/button_widget.dart';
import '../../landing/screens/landing_page.dart';
import '../../theme/app_color.dart';
import '../controller/onboarding_controller.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});


  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  /// object from controller class*
  OnboardingController controllerObj = OnboardingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /**Page View**/
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 640),
              child: PageView.builder(
                reverse: true,
                itemCount: controllerObj.items.length,
                controller: controllerObj.controller,
                onPageChanged: (index){
                  setState(() { controllerObj.currentPage=index;});  },
                itemBuilder: (BuildContext context, int index) {
                  return
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:
                            AssetImage(controllerObj.items[index]["image"]!)
                             ),
                            SizedBox(height: 24,),
                            Text(controllerObj.items[index]["title"]!,
                                style:
                                TextTheme.of(context).displayMedium
                            ),
                            SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(top:30,
                              right: 30,left: 30),
                              child: Text(controllerObj.items[controllerObj.currentPage]["body"]!,
                                style:TextTheme.of(context).bodyMedium,
                                textAlign: TextAlign.center
                                ,),
                            )
                          ],)
                    );
                },
              ),
            ),
            /**Indicator part **/
            SmoothPageIndicator(
              textDirection: TextDirection.rtl,
              controller: controllerObj.controller,
              count: controllerObj.items.length,
              effect: ScrollingDotsEffect(
               // expansionFactor: 2,
                dotWidth: 10.0,
                dotHeight: 10.0,
                activeDotColor: AppColor.blackColor,
                dotColor: AppColor.lightGreyColor,
                  activeDotScale: 1.1
              ),
            ),
            SizedBox(height: 40,),
            /**next button**/
            Row(spacing: 50,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(type:"onboard",
                   onPressed:  () {
                  if(controllerObj.currentPage != controllerObj.items.length-1)
                  {
                    controllerObj.controller.nextPage(
                        duration:
                        Duration(seconds: 1), curve: Curves.linear);
                  }
                  else{
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(builder: (context) => LandingPage())
                    );
                  }}
                  ,
                  child: controllerObj.currentPage != controllerObj.items.length-1 ?
                  Text("التالي"):
                  Text("حياك")
                  ),

                controllerObj.currentPage != controllerObj.items.length-1 ?
                TextButton(
                //Go to Signup Screen
                onPressed: () {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(builder: (context) => LandingPage()),
                    );

                },
                child:
                Text("تخطي", style: TextTheme.of(context).bodySmall,)
                ) :
                TextButton( onPressed: null,
                  child: SizedBox.shrink(),
                ),
            ],)



          ],
        ),
      ),
    );
  }
}
