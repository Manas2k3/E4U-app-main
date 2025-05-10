import 'package:e4u/presentation/screens/premium_section/premium_plan_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumSection extends StatefulWidget {
  const PremiumSection({super.key});

  @override
  State<PremiumSection> createState() => _PremiumSectionState();
}

class _PremiumSectionState extends State<PremiumSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.grey.shade800,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.search, color: Colors.grey.shade200),
                        SizedBox(width: 15),
                        Icon(Icons.person_outline, color: Colors.grey.shade200),
                      ],
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        "https://static.vecteezy.com/system/resources/thumbnails/026/433/446/small/abstract-musical-note-symbol-painting-black-background-generative-ai-photo.jpg",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Premium to unlock exclusive content and VIP features.",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Try 2 months for ₹0",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "2-trial for free. Then ₹119.00/month. Offer ends soon. Cancel anytime.",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(height: 25),
                      Divider(color: Colors.grey.shade700),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.infinity,
                          // Ensures full-width alignment
                          decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          // Adds spacing
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // Centers vertically
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // Aligns horizontally
                            children: [
                              Text(
                                "Why join Premium?",
                                textAlign: TextAlign.center,
                                // Ensures text stays centered
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 15),
                              _buildFeature(
                                  Icons.music_off, "Ad-free music listening"),
                              _buildFeature(
                                  Icons.download, "Download to listen offline"),
                              _buildFeature(
                                  Icons.shuffle, "Play songs in any order"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900, // Background color for the container
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: PremiumPlanCard(
                          planName: "Mini",
                          price: "₹29 for 1 week",
                          features: [
                            "1 mobile-only Premium account",
                            "Offline listening of up to 30 songs on 1 device",
                            "One-time payment",
                            "Basic audio quality",
                          ],
                          buttonText: "Get Premium Mini",
                          planColor: Colors.greenAccent, // Change color dynamically
                          buttonColor: Colors.lightGreenAccent, // Change button color dynamically
                          onPressed: () {
                            print("Premium Mini Purchased");
                          },
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900, // Background color for the container
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: PremiumPlanCard(
                          planName: "Individual",
                          price: "₹29 for 1 week",
                          features: [
                            "1 mobile-only Premium account",
                            "Offline listening of up to 30 songs on 1 device",
                            "One-time payment",
                            "Basic audio quality",
                          ],
                          buttonText: "Get Premium Mini",
                          planColor: Colors.pink.shade200, // Change color dynamically
                          buttonColor: Colors.pink.shade200, // Change button color dynamically
                          onPressed: () {
                            print("Premium Mini Purchased");
                          },
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900, // Background color for the container
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: PremiumPlanCard(
                          planName: "Family",
                          price: "₹29 for 1 week",
                          features: [
                            "1 mobile-only Premium account",
                            "Offline listening of up to 30 songs on 1 device",
                            "One-time payment",
                            "Basic audio quality",
                          ],
                          buttonText: "Get Premium Mini",
                          planColor: Colors.blueGrey, // Change color dynamically
                          buttonColor: Colors.blueGrey, // Change button color dynamically
                          onPressed: () {
                            print("Premium Mini Purchased");
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centers content
        children: [
          Icon(icon, color: Colors.white, size: 20),
          SizedBox(width: 10),
          Text(
            text,
            textAlign: TextAlign.center, // Ensures text stays centered
            style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
