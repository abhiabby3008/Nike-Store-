import 'package:flutter/material.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/screens/FavScreen/fav_screen.dart';
import 'package:nike/screens/HomeScreen/home_screen.dart';
import 'package:nike/screens/ProfileScreen/profile_screen.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

int _selectedIndex = 0;

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
        ),
        StadiumBorder(side: BorderSide()),
      ),
      notchMargin: 20.0,
      child: SizedBox(
        height: 70.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Left Side Icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Icon(
                        Icons.home,
                        color: _selectedIndex == 0 ? btncolor : Colors.grey,
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FavScreen()));
                      },
                      child: Icon(
                        Icons.favorite_border,
                        color: _selectedIndex == 1 ? btncolor : Colors.grey,
                      ),
                    ),
                  ],
                ),

                // Right Side Icons
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: Icon(
                      Icons.notifications_none,
                      color: _selectedIndex == 2 ? btncolor : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen()));
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    child: Icon(
                      Icons.person_outline,
                      color: _selectedIndex == 3 ? btncolor : Colors.grey,
                    ),
                  ),
                ])
              ]),
        ),
      ),
    );
  }
}
