import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/globals.dart' as globals;
import 'dart:math' as math;

class DataBudget extends StatelessWidget {
  const DataBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const DrawerApp(),
      body: globals.budgets.isNotEmpty
          ? ListView.builder(
              itemCount: globals.budgets.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 6,
                        blurRadius: 8,
                        offset:
                            const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        globals.budgets[index].tanggal,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        globals.budgets[index].judul,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp.${globals.budgets[index].nominal}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            globals.budgets[index].jenis,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          : const Center(child: Text('Data Masih Kosong', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
    );
  }
}