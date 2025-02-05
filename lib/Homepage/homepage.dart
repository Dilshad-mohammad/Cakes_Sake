import 'package:cake_lake/Categories/categories.dart';
import 'package:flutter/material.dart';
import '../Categories/widgets/category_sections.dart';
import '../Product/widgets/product_section.dart';
import '../profile/profile.dart';
import 'Widgets/appbar.dart';
import 'Widgets/image_slider.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1578985545062-69928b1d9587',
    'https://plus.unsplash.com/premium_photo-1714662390433-443073660a26?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1585601356265-5ffabba18b9c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1632134964015-9300cf2314cf?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1469533667357-006056eaf780?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.pinkAccent,
            flexibleSpace: buildAppBarContent()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        children: [
          buildImageSlider(),
          const SizedBox(height: 10),
          buildCategorySection(context),
          ProductsSectionHeading (sectionTitle: 'Cakes for Kids', imageList: imgList),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/5 2.png'),
          ),
          ProductsSectionHeading (sectionTitle: 'Shop Flavours', imageList: imgList),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/7 1.png'),
          ),
          ProductsSectionHeading (sectionTitle: 'Custom Cake Celebration', imageList: imgList),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: const Color(0xffab4362),
          unselectedItemColor: Colors.grey,
          onTap: (index) {setState(() {_currentIndex = index;});
          // Navigate to the selected tab
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const HomepageScreen()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const Categories()));
              break;
            case 2:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Categories()));
              break;
            case 3:
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => CartPage()),
            // );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
              break;
          }
          },
          items: [
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 0 ? const Color(0xffac4362) : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/Navigation items/Home.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 1 ? const Color(0xffac4362) : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/Navigation items/Diversity.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 2 ? const Color(0xffac4362) : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/Navigation items/Heart.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 3 ? const Color(0xffac4362) : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/Navigation items/Shopping Cart.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _currentIndex == 4 ? const Color(0xffac4362) : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/Navigation items/User.png',
                  height: 25,
                  width: 25,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
    );
  }
}

