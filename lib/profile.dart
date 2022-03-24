import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xFF92DA7F),
                Color(0xFF40BCA1),
              ],
            ),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            const SizedBox(
              height: 36,
            ),
            GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: const ExactAssetImage(
                    'C:/Users/User/Desktop/Blippy/assets/images/eclipse_74.png'),
                radius: 65,
                child: Image.asset(
                  'C:/Users/User/Desktop/Blippy/assets/images/image1.png',
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            GestureDetector(
                child: GradientText(
              '+ Add Profile Photo',
              colors: const <Color>[
                Color(0xFF92DA7F),
                Color(0xFF40BCA1),
              ],
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            )),
            const SizedBox(
              height: 24,
            ),
            Row(children: [
              Container(
                height: 390,
                width: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.45),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(-5, 7),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'palmeiro.leonardo@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text(
                        'GitHub',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'https://github.com/leopalmeiro',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text(
                        'Linkedin',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'www.linkedin.com/in/leonardo-palmeiro-834a1755',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      child: const ListTile(
                          title: Text(
                            'GitHub',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'https://github.com/leopalmeiro',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ])
          ])
        ],
      ),
    );
  }
}
