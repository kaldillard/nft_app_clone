import 'package:flutter/material.dart';

import '../nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NftCard(
          image: "lib/images/apiens_2.png",
          price: .95,
          onTap: () {},
        ),
      ],
    );
  }
}
