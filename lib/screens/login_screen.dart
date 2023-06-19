import 'package:dogdom/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'home_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dogdom_login.png'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                const Text(
                  AppString.appName,
                  style: TextStyle(color: Colors.white, fontSize: 46),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(71.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white24,
                      ),
                    ],
                  ),
                  child: InternationalPhoneNumberInput(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.white,
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 21.0),
                    inputDecoration: const InputDecoration(
                      border: InputBorder.none,

                    ),
                    onInputChanged: (PhoneNumber number) {
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      showFlags: false,
                    ),
                    selectorTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // if (PhoneNumber == '22 637 5609') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                  //  }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFA6650),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(65),
                    ),
                  ),
                  child: Container(
                    height: 58,
                    width: 319,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 10),
                    alignment: Alignment.center,
                    child: const Text(
                      'Get Captcha',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 35,
                      height: 30,
                    ),
                    Text(
                      'Password to Login',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                  child: const Text(
                    '''By signing in, you agree to the User Agreement
                            and Privacy Terms.''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
