import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';

import '../models/city.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(
             edge,
          ),
          child: ListView(
            children: [
              // Header
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
              // List of Cities
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
              ),
              SizedBox(height: 30),
              Text('Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                )
              ),
              SizedBox(height: 16),
              // List of Space
              Column(
                children: [
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/space1.png',
                      city: 'Bandung',
                      country: 'Indonesia',
                      price: 52,
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    space: Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/space2.png',
                      city: 'Jakarta',
                      country: 'Indonesia',
                      price: 12,
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    space: Space(
                      id: 3,
                      name: 'Darrling House',
                      imageUrl: 'assets/space3.png',
                      city: 'Jakarta',
                      country: 'Indonesia',
                      price: 20,
                      rating: 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}