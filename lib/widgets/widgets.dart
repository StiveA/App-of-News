import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledAppBar extends StatelessWidget {
  const StyledAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "TopNotícias",
                style: GoogleFonts.montserrat(fontSize: 30),
              ),
            ),
          ],
        ));
  }
}
