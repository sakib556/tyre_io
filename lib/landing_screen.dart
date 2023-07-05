import 'package:flutter/material.dart';
import 'package:tyre_io/tire_heater_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff46474b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0), // Padding from all sides
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50.0), // Space before the battery icon
                  const Icon(
                    Icons.charging_station_outlined, // Battery icon
                    size: 120.0,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 150.0), // Space after the battery icon
                  const Icon(
                    Icons.tv_outlined, // TV icon
                    size: 180.0,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 150.0), // Space after the TV icon
                  ReusableButton(
                    title: "Let's Connect",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const TireHeaterScreen();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ReusableButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: Colors.green, // Soft green color
          borderRadius: BorderRadius.circular(8.0), // Soft green corner radius
        ),
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
