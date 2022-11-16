import 'package:counter_7/databudget.dart';
import 'package:counter_7/homepage.dart';
import 'package:counter_7/addbudget.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile( //menu clickable
            title: const Text('counter_7'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke mainpage
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(
                    title: 'Program Counter',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke halaman isi form
                context,
                MaterialPageRoute(builder: (context) => const TambahBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke halaman data form
                context,
                MaterialPageRoute(builder: (context) => const DataBudget()),
              );
            },
          ),
        ],
      ),
    );
  }
}