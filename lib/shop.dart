import 'package:flutter/material.dart';
import 'package:revive_retail/profile.dart';
import 'cart_page.dart';
import 'login.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<ShopItemData> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Shop         Revive Retail'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: cartItems),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset(
                'images/logo.png',
              ),
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Shop'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_sharp),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/controller1.png'),
                    title: 'Dual shock wireless controller',
                    price: '199.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
          ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/controller2.png'),
                    title: 'Dual shock wireless controller',
                    price: '60.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
          ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/controller3.png'),
                    title: 'Xbox wireless se',
                    price: '59.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-1.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-2.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-3.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-4.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-5.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-6.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-8.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download-9.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/download.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/image.png'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/images-1.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
              ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/images-2.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
              ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/images-3.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
              ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/images-4.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
                  ...List.generate(
              1,
              (index) => ShopItem(
                    image: AssetImage('images/images.jpg'),
                    title: 'Wireless Controller',
                    price: '79.99',
                    onAddToCart: (item) {
                      setState(() {
                        cartItems.add(item);
                      });
                    },
                  )),
        ],
      ),
    );
  }
}

class ShopItemData {
  final ImageProvider image;
  final String title;
  final String price;

  ShopItemData({
    required this.image,
    required this.title,
    required this.price,
  });
}

class ShopItem extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String price;
  final ValueChanged<ShopItemData> onAddToCart;

  ShopItem({
    required this.image,
    required this.title,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image: image, width: 100, height: 100),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                SizedBox(height: 5),
                Text('\$$price'),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                onAddToCart(
                    ShopItemData(image: image, title: title, price: price));
              },
            ),
          ],
        ),
      ),
    );
  }
}
