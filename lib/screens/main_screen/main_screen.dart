import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/screens/main_screen/basecket_screen.dart';
import 'package:watch_store/screens/main_screen/home_screen.dart';
import 'package:watch_store/screens/main_screen/profile_screen.dart';
import 'package:watch_store/widgets/btm_nav_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

abstract class BtmNavIndex {
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = BtmNavIndex.home;

  List<int> _backFolownig =  [];

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final map = {
    BtmNavIndex.home:_homeKey,
    BtmNavIndex.basket:_basketKey,
    BtmNavIndex.profile:_profileKey,
  };

  Future<bool> _onWillPop()async {
      if(map[selectedIndex]!.currentState!.canPop()){
        map[selectedIndex]!.currentState!.pop();
      }else if(_backFolownig.isNotEmpty){
        setState(() {
          selectedIndex=_backFolownig.last;
          _backFolownig.removeLast();
        });
      }

      log("will pop");
      return false;
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bottomNavHeight = size.height * .1;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
          child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: bottomNavHeight,
                child: IndexedStack(
                  
                  index: selectedIndex,
                  children: [
      
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) =>
                          MaterialPageRoute(builder: (context) => const HomeScreen()),
                    ),
      
                    Navigator(
                      key: _basketKey,
                      onGenerateRoute: (settings) =>
                          MaterialPageRoute(builder: (context) => const BascketScreen()),
                    ),
      
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) =>
                          MaterialPageRoute(builder: (context) => const ProfileScreen()),
                    ),
      
                  ],
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: bottomNavHeight,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtmNavItem(
                        isActive: selectedIndex == BtmNavIndex.profile,
                        iconSvgPath: Assets.svg.user,
                        onTap:()=>btmNavOnPressed(bottomNavIndex: BtmNavIndex.profile),
                        text: Strings.profile),
                    BtmNavItem(
                        isActive: selectedIndex == BtmNavIndex.basket,
                        iconSvgPath: Assets.svg.basket,
                        onTap:()=>btmNavOnPressed(bottomNavIndex: BtmNavIndex.basket),
                        text: Strings.basket),
                    BtmNavItem(
                        isActive: selectedIndex == BtmNavIndex.home,
                        iconSvgPath: Assets.svg.home,
                        onTap:()=>btmNavOnPressed(bottomNavIndex: BtmNavIndex.home),
                        text: Strings.home),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

 
 btmNavOnPressed({required int bottomNavIndex}){
    _backFolownig.add(selectedIndex);
   setState(()=> selectedIndex = bottomNavIndex);
 }
 
}
