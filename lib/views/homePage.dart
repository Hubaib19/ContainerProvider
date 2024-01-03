// ignore: file_names
import 'package:container_provider/controller/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContainerProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Center(
        child: Column(
          children: [
            Consumer<ContainerProvider>(
              builder: (context, value, child) => Container(
                width: value.resize ? 200 : 100,
                height: value.resize ? 200 : 100,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  provider.resizeController();
                },
                child: const Text(
                  'click',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
