import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(children: [
              Row(
                children: [
                  SizedBox(
                    height: 115,
                    width: 120,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () {}, child: const Icon(Icons.qr_code_scanner))
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
