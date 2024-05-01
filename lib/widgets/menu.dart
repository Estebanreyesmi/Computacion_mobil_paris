import 'package:flutter/material.dart';
import 'package:prueba2/widgets/widgets.dart';
import 'package:prueba2/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Categorias',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Ropa'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RopaPage()),
              );
            },
          ),
          ListTile(
            title: Text('Zapatillas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ZapatillasPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
