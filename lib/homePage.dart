// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:login/categories.dart';
import 'package:login/constant.dart';
import 'package:login/models/components/NWarrival.dart';
import 'package:login/models/components/popular.dart';
import 'package:login/searchForm.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.email, required this.password})
      : super(key: key);
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 114, 5, 42),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'icons/menu.png',
              height: 30,
              color: Colors.white,
            ),
            color: Colors.amber,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Жибек-Жолу кочосу 77/3 ',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Image.asset(
                'icons/gmap.png',
                height: 35,
                color: Colors.white,
              ),
              const SizedBox(width: DefaultPadding / 2),
            ],
          ),
          actions: [
            SizedBox(width: 40),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'icons/alarm-bell.png',
                color: Colors.white,
              ),
            )
          ],
          //title: Text('Почтаныз $email', style: TextStyle(fontSize: 15),),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(DefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AkTai Look',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 88, 10, 36)),
              ),
              const Text(
                'Суйуктуу бренддериндин баары ушул жерде',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: DefaultPadding),
                child: SearchForm(),
              ),
              Categories(),
              // const MyWidget(),
              const SizedBox(
                height: DefaultPadding,
              ),
              const NewArrival(),
              const SizedBox(
                height: DefaultPadding,
              ),
              const Popular(),
            ],
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Categories(),
        ],
      ),
    );
  }
}
