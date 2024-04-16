import 'package:flutter/material.dart';
import 'package:prueba2/widgets/widgets.dart';

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
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
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
