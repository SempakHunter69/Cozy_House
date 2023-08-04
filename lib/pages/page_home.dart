// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cozy/model/model_city.dart';
import 'package:cozy/model/model_space.dart';
import 'package:cozy/model/model_tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_cards.dart';
import 'package:cozy/widgets/space_cards.dart';
import 'package:cozy/widgets/tips_cards.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 24),
          child: ListView(
            children: [
              SizedBox(
                height: 24,
              ),
              //POPULAR CITIES
              Text(
                'Explore Now',
                style: blackTextMedium.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Mencari kost\'an yang cozy',
                style: greyTextLight.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Popular Cities',
                style: blackTextRegular.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/pic.png',
                        isPopular: false)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/pic2.png',
                        isPopular: true)),
                    SizedBox(width: 20),
                    CityCard(City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/pic3.png',
                        isPopular: false)),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //RECOMMENDED SPACES
              Text(
                'Recommended Space',
                style: blackTextRegular.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  SpaceCards(
                    Space(
                      id: 1,
                      name: 'Kurateso',
                      rating: 4,
                      city: 'Bandung',
                      country: 'Indonesia',
                      price: 45,
                      imageUrl: 'assets/space.png',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCards(Space(
                    id: 1,
                    name: 'Hotel Kimochi',
                    rating: 4,
                    city: 'Jakarta',
                    country: 'Indonesia',
                    price: 45,
                    imageUrl: 'assets/space2.png',
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCards(Space(
                    id: 1,
                    name: 'Nigrat Hotel',
                    rating: 4,
                    city: 'Pontianak',
                    country: 'Indonesia',
                    price: 45,
                    imageUrl: 'assets/space3.png',
                  )),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Text(
                'Tips & Guidance',
                style: blackTextRegular.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  TipsCards(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/tips.png',
                      updatedAt: 'August 3, 2023',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCards(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: 'August 3, 2023',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * 24),
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/favorite.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
