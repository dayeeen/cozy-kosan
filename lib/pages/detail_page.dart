import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              // Lebarnya disesuaikan dengan lebar layar
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(height: 2),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '/month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            // Rating
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 2),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  height: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      // MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge, right: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'Kitchen',
                              imageUrl: 'assets/icon_kitchen.png',
                              total: 2,
                            ),
                            FacilityItem(
                              name: 'Bedroom',
                              imageUrl: 'assets/icon_bedroom.png',
                              total: 3,
                            ),
                            FacilityItem(
                              name: 'Big Lemari',
                              imageUrl: 'assets/icon_cupboard.png',
                              total: 1,
                            ),
                          ],
                        ),
                      ),
                      // Photo
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(left: edge, right: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: edge),
                            Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                            Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                            Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 18),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      //Location
                      Padding(
                        padding: EdgeInsets.only(left: edge, right: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Jln. Suroyo No. 161\nSurabaya',
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/btn_map.png',
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      // Booking Button
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('assets/btn_back.png', width: 40),
                  ),
                  Spacer(),
                  Image.asset('assets/btn_wishlist.png', width: 40),
                ],
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}
