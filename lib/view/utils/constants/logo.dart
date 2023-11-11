import 'package:e_commerce/view/utils/constants/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo {
  static Widget logo = Column(
    children: [
      Text(
        'TheCart',
        style: GoogleFonts.inika(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      ),
      const Text(
        'your Store',
        style: TextStyle(fontSize: 20, color: PreferedColors.baseColor),
      )
    ],
  );
}
