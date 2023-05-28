import 'package:dogdom/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    inputDecoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.keyboard_arrow_down,
                          color: Colors.white,size: 31,),
                    ),
                    onInputChanged: (PhoneNumber number) {},
                    selectorTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                    ),
                ),
              ),
            ],
          )
        ]
        ,
      )
      ,
    );
  }
}
