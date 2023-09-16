import 'package:agriculture_app/pages/cart_page.dart';
import 'package:agriculture_app/pages/explore_page.dart';
import 'package:agriculture_app/pages/profile_page.dart';
import 'package:agriculture_app/pages/services_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = const [ExplorePage(), ServicesPage(), CartPage(), ProfilePage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Thairong Seng",
              ),
              accountEmail: const Text("thairongseng@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfO37MK81JIyR1ptwqr_vYO3w4VR-iC2wqQ&usqp=CAU",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSff8JL9ALjQrQ11mS8MNLOGgyOXjRTJEckCA&usqp=CAU",
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favorites"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Friends"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Request"),
              onTap: (){},
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: const Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text("Policies"),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Exit"),
              onTap: (){},
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Wilson ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Enjoy our services",
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: badges.Badge(
                badgeContent: const Text(
                  '4',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.green),
                position: badges.BadgePosition.topEnd(top: -15, end: -12),
                child: const Icon(IconlyBroken.notification),
              ),
            ),
          )
        ],
      ),

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              activeIcon: Icon(IconlyBold.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.call),
              activeIcon: Icon(IconlyBold.call),
              label: "Services"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.buy),
              activeIcon: Icon(IconlyBold.buy),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              activeIcon: Icon(IconlyBold.profile),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
