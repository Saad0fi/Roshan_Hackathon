import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:Hayyak/feature/theme/app_color.dart';
import '../../common/widget/button_widget.dart';
import '../../otp/screens/otp_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        flexibleSpace: Image(image: AssetImage("assets/images/image 7.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ادخل رقم جوالك",
                    style: TextTheme.of(context).displayMedium,
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                "عند إدخالك رقم جوالك ، ستتمكن من تسجيل الدخول و انشاء حساب ",
                style: TextTheme.of(context).bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Form(
                key: formKey,
                child: PhoneFormField(
                  validator: (value) {
                    if (value == null || !value.isValid()) {
                      return "الرجاء ادخال رقم جوال صحيح";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 18),
                    hintText: "XX XXX XXXX",
                    hintStyle: TextStyle(color: Color(0xffB5B5B5)),
                    filled: true,
                    fillColor: Color(0xffE2E2E2),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xffE2E2E2),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                  initialValue: PhoneNumber.parse('+966'),

                  /// Limit to Gulf
                  countrySelectorNavigator: CountrySelectorNavigator.page(
                    countries: const [
                      IsoCode.SA,
                      IsoCode.AE,
                      IsoCode.BH,
                      IsoCode.QA,
                      IsoCode.KW,
                    ],
                  ),
                  onChanged: (phoneNumber) {
                    setState(() {});
                  },
                  enabled: true,
                  isCountrySelectionEnabled: true,
                  isCountryButtonPersistent: true,
                  countryButtonStyle: const CountryButtonStyle(
                    showFlag: true,
                    flagSize: 16,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تذكرني"),
                    Checkbox(
                      activeColor: AppColor.greenColor,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      side: BorderSide(
                        color: Color(0xff8A8A90), // Desired border color
                        width: 1, // Desired border width
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 150),
              ButtonWidget(
                type: "Login",
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => OTPScreen(),
                      ),
                    );
                  }
                },
                child: Text("استمرار"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
