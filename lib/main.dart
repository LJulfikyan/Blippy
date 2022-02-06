import 'package:flutter/material.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const BlippyLogin());
}

class BlippyLogin extends StatelessWidget {
  const BlippyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BlippyLoginPage(title: 'SIGN IN'),
    );
  }
}

class BlippyLoginPage extends StatefulWidget {
  const BlippyLoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<BlippyLoginPage> createState() => _BlippyLoginPageState();
}

class _BlippyLoginPageState extends State<BlippyLoginPage> {
  bool _value = false;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
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
      body: Column(
        children: [
          Row(
            children: <Widget>[
              const Text(
                'Don’t have an account? ',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  height: 1.8,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('SIGN UP PAGE');
                },
                child: Container(
                  color: Colors.transparent,
                  child: GradientText(
                    'SIGN UPpppppppp',
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      height: 1.8,
                    ),
                    colors: const <Color>[
                      Color(0xFF92DA7F),
                      Color(0xFF40BCA1),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          const SizedBox(
            width: 328,
            height: 48,
            child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 328,
            height: 48,
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1.5),
                ),
                border: const OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  color: const Color(0xFF92DA7F),
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 30,
                  ),
                  Checkbox(
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    activeColor: const Color(0xFF92DA7F),
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      height: 1.8,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 46),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          Color(0xFF92DA7F),
                          Color(0xFF40BCA1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    width: 328,
                    height: 48,
                    alignment: Alignment.center,
                    child: const Text(
                      'LOGIN',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print('PASSWORD RECOVERY PAGE');
                },
                child: Container(
                  color: Colors.transparent,
                  child: GradientText(
                    'Forgot Your Password?',
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      height: 1.8,
                    ),
                    colors: const <Color>[
                      Color(0xFF92DA7F),
                      Color(0xFF40BCA1),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
