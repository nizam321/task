import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Drwer extends StatefulWidget {
  const Drwer({super.key});

  @override
  State<Drwer> createState() => _DrwerState();
}

class _DrwerState extends State<Drwer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff10AB83),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 115,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        16,
                      ),
                      bottomRight: Radius.circular(
                        16,
                      ),
                    ),
                    child: Image.asset(
                      "images/Rectangle 2171.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, top: 22),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16.16,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Demo Limited Company",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            ExpansionTile(
              iconColor: Color(0xfff10AB83),
              collapsedIconColor: Color(0xfff10AB83),
              collapsedBackgroundColor: Color(0xfffC9ECE3),
              title: Text(
                "Purchase",
                style: GoogleFonts.poppins(
                  color: Color(0xfff10AB83),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              leading: SvgPicture.asset(
                'images/Vector1.svg',
                height: 16,
                width: 16,
                color: Color(0xfff10AB83),
              ),
              // Icon(
              //   Icons.shopping_cart,
              //   color: Color(0xfff10AB83),
              // ),
              childrenPadding: EdgeInsets.only(left: 60),
              children: [
                ListTile(
                  title: Text(
                    "Purchase List",
                    style: GoogleFonts.poppins(
                      color: Color(0xfff10AB83),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Order list",
                    style: GoogleFonts.poppins(
                      color: Color(0xfff10AB83),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "VAT List",
                    style: GoogleFonts.poppins(
                      color: Color(0xfff10AB83),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Product Unit",
                    style: GoogleFonts.poppins(
                      color: Color(0xfff10AB83),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Purchases Report",
                    style: GoogleFonts.poppins(
                      color: Color(0xfff10AB83),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
            ExpansionTile(
              title: Text(
                "Sell",
                style: GoogleFonts.poppins(
                  color: Color(0xfff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              leading: SvgPicture.asset(
                'images/Vector2.svg',
                height: 16,
                width: 16,
                color: Color(0xfff000000),
              ),
              childrenPadding: EdgeInsets.only(left: 60),
            ),
            ExpansionTile(
              title: Text(
                "Stock/Inventory",
                style: GoogleFonts.poppins(
                  color: Color(0xfff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              leading: SvgPicture.asset(
                'images/Group 63.svg',
                height: 16,
                width: 16,
                color: Color(0xfff000000),
              ),
              //  Icon(
              //   Icons.home,
              //   color: Color(0xfff000000),
              // ),
              childrenPadding: EdgeInsets.only(left: 60),
            ),
          ],
        ),
      ),
    );
  }
}
