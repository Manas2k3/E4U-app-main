import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumPlanCard extends StatelessWidget {
  final String planName;
  final String price;
  final List<String> features;
  final String buttonText;
  final Color planColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  const PremiumPlanCard({
    super.key,
    required this.planName,
    required this.price,
    required this.features,
    required this.buttonText,
    required this.planColor,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.music_note, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                "Premium",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            planName,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: planColor, // Dynamic plan color
            ),
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.grey.shade700),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: features.map((feature) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Icon(Icons.circle, size: 6, color: Colors.white),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        feature,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, // Dynamic button color
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Terms apply.",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey.shade400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
