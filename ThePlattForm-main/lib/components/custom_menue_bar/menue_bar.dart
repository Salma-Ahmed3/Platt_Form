

import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class MenueBar extends StatefulWidget {
  const MenueBar({super.key});

  @override
  _MenueBarState createState() => _MenueBarState();
}

class _MenueBarState extends State<MenueBar> {
  bool isNightMode = false;

  void toggleNightMode() {
    setState(() {
      isNightMode = !isNightMode;
    });
    if (isNightMode) {
      setNightMode();
    } else {
      setLightMode();
    }
  }

  void setNightMode() {
  }

  void setLightMode() {
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: ListView(
                children: [
                  const SizedBox(height: 81),
                   Text('محمد مصطفى', style: TextStyles.regular20),
                  const SizedBox(height: 59),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 237, 234, 234),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 5),
                        Image.asset(Assets.imagesWalletIcon),
                         const SizedBox(width: 9),
                         Text('رصيد المحفظة', style: TextStyles.regular16),
                         const SizedBox(width: 10),
                         Text('‏80,228.58 ريال', style: TextStyles.regular16),
                         const SizedBox(width: 5),
                      ],
                    ),
                  ),
                   const SizedBox(height: 39),
                   GestureDetector(
                    onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('لوحة المعلومات', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {                     
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('الاشعارات', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('تعاقداتي', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('طلباتي', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('طلبات الأفراد', style: TextStyles.regular16)),
                 
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('زياراتي', style: TextStyles.regular16)),
                
                   const SizedBox(height: 24),

                   GestureDetector(
                      onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('تذاكر الدعم والمساعدة', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(  onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('اتصل بنا', style: TextStyles.regular16)),
                   
                   const SizedBox(height: 24),

                   GestureDetector(  onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    child: Text('English', style: TextStyles.regular16)),
                  
                   const SizedBox(height: 24),

                   GestureDetector(  onTap: () {
                      
                      Navigator.of(context).pushNamed(TestPage.routeName);
                    },
                    
                    child: Text('تسجيل الخروج', style: TextStyles.regular16)),
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 232, 229, 229),
            child: SwitchListTile(
              // white mode
              inactiveThumbImage: const AssetImage(Assets.imagesSunWhitMode),
              inactiveTrackColor: Colors.white,
              inactiveThumbColor: const Color(0xff24A19D),
              tileColor: Colors.white,
              selectedTileColor:Colors.white,
              // dark mode
               activeColor:Colors.black,
              activeTrackColor: Colors.white,
              title:  Text('وضع ليلي', style: TextStyles.regular14,),
              value: isNightMode,
              onChanged: (bool value) {
                toggleNightMode();
              },
            ),
          ),
        ],
      ),
    );
  }
}
