import 'package:flutter/material.dart';

class OnboardingController {
  /// Page view controller
  PageController controller = PageController();

  /// current page
  int currentPage = 0;

  /// list of onboarding to app *
  List<Map<String, String>> items = [
    {
      "image": "assets/images/image 4.png",
      "title": "قريبين أكثر مما تتصور ",
      "body":
      "تعرف على جيرانك وتواصل معهم بسهولة، وخل حيّك مكان ينبض بالحياة",
    },
    {
      "image": "assets/images/image 2 (2).png",
      "title": "مع الجار تلقى العون",
      "body":
      "شارك جديدك، اطلب مساعدة، أو اعرض خدماتك… لأن الحي ما يكبر إلا بأهله",
    },
    {
      "image": "assets/images/image 5.png",
      "title": "حيّك مليان حياة",
      "body":
      "من الأسواق الصغيرة للأنشطة العائلية… اكتشف الفعاليات وشارك فيها مع جيرانك",
    },
  ];
}
