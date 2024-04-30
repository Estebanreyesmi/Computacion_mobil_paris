import 'package:flutter/material.dart';
import 'package:prueba2/widgets/widgets.dart';
import 'package:prueba2/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.26),
        child: AppBar(
          backgroundColor: const Color.fromRGBO(0, 109, 255, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Image.network(
            'https://seeklogo.com/images/P/paris-cl-logo-D2E2E84D3D-seeklogo.com.png',
            width: 60,
            height: 60,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle_outlined,
                  color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  const Icon(Icons.shopping_cart_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ],
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container2(),
              Container3(),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Ropa'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RopaPage()),
                );
              },
            ),
            ListTile(
              title: Text('Zapatillas'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZapatillasPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Container1(),
            Container4(),
            Container5(),
          ],
        ),
      ),
    );
  }
}
