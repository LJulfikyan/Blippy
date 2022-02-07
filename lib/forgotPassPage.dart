import 'package:flutter/material.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  bool isObscure = true;
  final bool _passMatch = false;
  final bool _atLeastEight = false;
  final bool _containNums = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: const [Text("Forgot Password"), Spacer(), Text('1/2')],
        ),
        automaticallyImplyLeading: false,
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              children: const <Widget>[
                Text(
                  '''To reset your password, please fill out the
information below. ''',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    height: 1.8,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
           const TextField(
                keyboardType: TextInputType.phone,
                cursorWidth: 3,
                cursorHeight: 20,
                cursorColor: Color(0xFF92DA7F),
                obscureText: false,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.5),
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Phone number',
                )),
            const SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: isObscure,
              cursorWidth: 3,
              cursorHeight: 20,
              cursorColor: const Color(0xFF92DA7F),
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1.5),
                ),
                border: const OutlineInputBorder(),
                hintText: 'New Password',
                suffixIcon: IconButton(
                  color: const Color(0xFF92DA7F),
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: isObscure,
              cursorWidth: 3,
              cursorHeight: 20,
              cursorColor: const Color(0xFF92DA7F),
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1.5),
                ),
                border: const OutlineInputBorder(),
                hintText: 'Confirm Password',
                suffixIcon: IconButton(
                  color: const Color(0xFF92DA7F),
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _atLeastEight ? Colors.green : Colors.grey),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  const Text(
                    'At least 8 characters',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      height: 1.8,
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _containNums ? Colors.green : Colors.grey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      'Must contain numbers (0-9)',

                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _passMatch ? Colors.green : Colors.grey),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      'Passwords match',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
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
                      height: 48,
                      alignment: Alignment.center,
                      child: const Text(
                        'Continu',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
