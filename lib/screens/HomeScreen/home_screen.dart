import 'package:flutter/material.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/screens/HomeScreen/components/Bottom_Navigation_Bar.dart';
import 'package:nike/screens/HomeScreen/components/drawer_widget.dart';
import 'package:nike/screens/MyCartScreen/mycart_screen.dart';


import 'components/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DrawerWidet()));
            },
            child: Image.asset(
              hamburger,
              scale: 3,
            ),
          ),
        ),
        title: Stack(
          children: [
            const Text(
              'Explore',
            ),
            Positioned(
                top: -10,
                left: -70,
                right: 10,
                bottom: 15,
                child: Image.asset(
                  explore_stack,
                  // scale: 1,
                ))
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCartScreen()));
              },
              child: Image.asset(
                bag,
                scale: 3,
              ),
            ),
          )
        ],
      ),
      body: const HomeScreenBody(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        splashColor: btncolor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MyCartScreen()));
        },
        backgroundColor: btncolor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            bag,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const Bottomnavbar(),
    );
  }
}
