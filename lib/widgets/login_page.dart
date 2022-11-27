import 'package:flutter/material.dart';
import 'package:local_image_provider/local_image_provider.dart';
import 'package:smart_helmet/widgets/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Page"),
      // ),
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )),
              // color: Colors.purple,
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 50.0),
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image/logo.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              // child: Image.asset(
              //   'assets/image/logo.jpg',
              //   width: 50,
              // ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(121, 84, 21, 142),
                        Color.fromARGB(219, 122, 129, 144),
                        Color.fromARGB(255, 93, 8, 1),
                      ],
                    )),
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2 / 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email: "),
                    SizedBox(height: 5.0),
                    TextFormField(
                      // controller: _email,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Email'),
                    ),
                    SizedBox(height: 15.0),
                    Text("Password: "),
                    SizedBox(height: 5.0),
                    TextFormField(
                      // controller: _email,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Password'),
                    ),
                    Center(
                      child: Card(
                        margin: const EdgeInsets.all(10.0),
                        color: Color.fromARGB(255, 2, 35, 62),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 194, 222, 245),
                              width: 1,
                            )),
                        elevation: 8,
                        child: Container(
                          height: 20,
                          width: 120.0,
                          margin: const EdgeInsets.all(10.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: const Text(
                              "Login!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
