import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolworkspro_clone/model/dashboard_icon.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 160,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.qr_code_scanner),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0, // Reduce spacing between columns
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: iconData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            iconData[index]['icon'],
                            size: 48.0,
                            color: Colors.blue,
                          ),
                          Text(iconData[index]['label']),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
