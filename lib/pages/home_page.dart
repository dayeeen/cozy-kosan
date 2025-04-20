import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';

import '../models/city.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
             edge,
          ),
          child: ListView(
            children: [
              Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
              Text('Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              Text('Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(
                      city: City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                      ),
                    ),
                    SizedBox(width: 20),
                    CityCard(
                      city: City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true
                      ),
                    ),
                    SizedBox(width: 20),
                    CityCard(
                      city: City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}