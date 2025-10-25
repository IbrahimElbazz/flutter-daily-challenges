import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daily_challenges/day-1/product_details_screen/widgets/counter.dart';
import 'package:flutter_daily_challenges/day-1/product_details_screen/widgets/expanded_tile_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 371,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff000000),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.share,

                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset('assets/images/apple.png'),
                  SizedBox(height: 35),
                  SmoothPageIndicator(
                    controller: PageController(),
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: Color(0xff53B175),
                      dotHeight: 5,
                      dotWidth: 8,
                      type: WormType.thin,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Naturel Red Apple',
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                      ),

                      Icon(
                        CupertinoIcons.heart_fill,
                        size: 30,
                        color: Color(0xff7c7c7c),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1kg, Price',
                    style: GoogleFonts.cairo(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff7c7c7c),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Counter(),
                      Text(
                        '4.99\$',
                        style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey.withAlpha(30)),
                  SizedBox(height: 5),
                  ExpandedTileWidget(
                    title: 'Product Detail',
                    content:
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey.withAlpha(30)),
                  SizedBox(height: 10),
                  ExpandedTileWidget(
                    title: 'Product Detail',
                    content:
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey.withAlpha(30)),
                  SizedBox(height: 10),
                  ExpandedTileWidget(
                    title: 'Product Detail',
                    content:
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  ),
                  SizedBox(height: 10),

                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Color(0xff53B175),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add To Basket',
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
