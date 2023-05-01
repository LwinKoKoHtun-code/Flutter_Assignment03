import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController? _txtctrlUserName = TextEditingController();
final TextEditingController? _txtctrlPassword = TextEditingController();
bool chkSecure = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assign 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              //child: Image.asset('assets/images/avatar01.jpg'),
              backgroundImage: AssetImage('assets/images/avatar01.jpg'),
              backgroundColor: Colors.yellow,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Login Here',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              controller: _txtctrlUserName,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                hintText: 'Enter a username',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              obscureText: chkSecure,
              controller: _txtctrlPassword,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                suffixIcon: IconButton(
                  icon: chkSecure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      chkSecure = !chkSecure;
                    });
                  },
                ),
                hintText: 'Enter a password',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
