import 'package:flutter/material.dart';
import 'package:nike_ecom/components/bottom_nav_bar.dart';
import 'package:nike_ecom/pages/cart_page.dart';
import 'package:nike_ecom/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  // pages to be displayed
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(Icons.menu),
            ),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/nike.png',
            color: Colors.white,
            scale: 6,
            )),

            /*Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Divider(
                color: Colors.white,
              ),
            */

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(leading: Icon(Icons.home, color: Colors.white,),
                      title: Text('Home',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(leading: Icon(Icons.info, color: Colors.white,),
                      title: Text('Info',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
              ),
            ),

            SizedBox(height: 330),

            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(leading: Icon(Icons.logout, color: Colors.white,),
                      title: Text('Logout',
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
              ),
            )
          
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
