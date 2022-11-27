import 'package:flutter/material.dart';
import 'package:login/homePage.dart';

class IamRich extends StatelessWidget {
  IamRich({super.key});

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 109, 9, 50),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildContainer(),

            
            const SizedBox(
              height: 50.0,
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        onChanged: (value) {
                          email = value;},
                        decoration: const InputDecoration(
                          border: InputBorder.none, //OutlineInputBorder()
                          hintText: 'Логин:',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Пароль:',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 105.0),
                  child: InkWell(
                    onTap: () {
                      if (email == '' && password == '') {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Почтанызды жазыныз',)));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                email: email,
                                password: password,
                              ),
                            ));
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        child: const Text(
                          'Вход',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              height: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Нету аккаунта ?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Регистрация',
                      style: TextStyle(
                        color: Color.fromARGB(255, 44, 60, 242),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }

  Container buildContainer() {
    return Container(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Center(
              child: Image.asset(
            'icons/5.png',
            height: 100,
          )),
          // Positioned(
          //   bottom: 0,
          //   left: -10,
          //   top: -10,
          //   child: Container(
          //     width: 90,
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         gradient: LinearGradient(colors: [color2, color3]),
          //         boxShadow: [
          //           BoxShadow(
          //               color: color2,
          //               offset: const Offset(8.0, 5.0),
          //               blurRadius: 20.0)
          //         ]),
          //   ),
          // ),
           const SizedBox(height: 20.0,),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  
                  const Center(
                    child: Text(
                      ' AkTai Looks',
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 249, 251),
                        fontSize: 60.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  
                  
                  const Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 43, 154),
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
