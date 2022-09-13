import 'package:flutter/material.dart';
import 'package:nft_app_clone/model/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image: "lib/images/apiens_1.png",
    );
  }
}
