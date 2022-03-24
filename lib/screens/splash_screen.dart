
import 'package:blippy_login/widgets/splash_widget.dart';
import 'package:flutter/material.dart';
import '../Base/base_screen.dart';
import '../controllers/splash_controller.dart';
import '../main.dart';

class SplashScreen extends BaseScreen<SplashController> {
  SplashScreen({Key? key}): super(key: key);


  @override
  Widget builder(){
    return   Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF92DA7F),
                Color(0xFF40BCA1),
              ],
            ),
          ),
          child: Center(child: SplashWidget(
            onComplete: ()=>
            {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) =>
                    const BlippyLoginPage(title: 'LOGIN',)),
              ),
              controller.animateCompleted(),
            }
          ),
          ),

     );
  }

  @override
  SplashController putController() {
    return SplashController();
  }

}