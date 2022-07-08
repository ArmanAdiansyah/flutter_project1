import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//primary button color
const Color aFont = Color(0xffFFE072);
//background color
const Color bFont = Color(0xffF5F5F5);

TextStyle get HeadingStyle{
  return GoogleFonts.poppins (
      textStyle: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.black
      )
  );
}

TextStyle get subTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 15.5,
      )
  );
}

TextStyle get subsTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.4
      )
  );
}

TextStyle get writerTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Color(0xff7B7B7B),
          height: 1.5
      )
  );
}

TextStyle get ratingTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          height: 1.3
      )
  );
}

TextStyle get desc_writer_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 1.8,
        color: Color(0xff7B7B7B),
      )
  );
}

TextStyle get descTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.4
      )
  );
}

TextStyle get rat_desc_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          height: 1.3
      )
  );
}

TextStyle get desc_price_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        height: 1.8,
        color: Colors.black,
      )
  );
}

TextStyle get info_desc_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xff575757),
      )
  );
}

TextStyle get rat_info_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      )
  );
}

TextStyle get desc_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      )
  );
}

TextStyle get desc_book_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      )
  );
}

TextStyle get expand_TitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      )
  );
}

TextStyle get buttonTitleStyle{
  return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.8,
        color: Colors.white,
      )
  );
}