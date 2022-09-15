// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_app_clone/model/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NftCard(
          image: "lib/images/apiens_1.png",
          price: 1.25,
          onTap: () {},
        ),
        NftCard(
          image: "lib/images/apiens_2.png",
          price: .95,
          onTap: () {},
        ),
        NftCard(
          image: "lib/images/apiens_3.png",
          price: 2.50,
          onTap: () {},
        ),
      ],
    );
  }
}
