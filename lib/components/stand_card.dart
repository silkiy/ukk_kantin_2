import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandCard extends StatefulWidget {
  final String name;
  final String img;
  final String jamOperational;
  final String buka;
  const StandCard({
    super.key,
    required this.name,
    required this.img,
    required this.jamOperational,
    required this.buka,
  });

  @override
  State<StandCard> createState() => _StandCardState();
}

class _StandCardState extends State<StandCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
        child: Column(
          children: [
            Text(
              widget.name,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "JAM OPERATIONAL",
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.jamOperational,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.buka,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
