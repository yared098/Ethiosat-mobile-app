// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class display_page extends StatefulWidget {
//   const display_page({Key? key}) : super(key: key);

//   @override
//   _display_pageState createState() => _display_pageState();
// }

// BannerAd bAd = BannerAd(
//     size: AdSize.banner,
//     adUnitId: 'ca-app-pub-3940256099942544/6300978111',
//     listener: BannerAdListener(onAdClosed: (Ad ad) {
//       print("Ad Closed");
//     }, onAdFailedToLoad: (Ad ad, LoadAdError error) {
//       ad.dispose();
//     }, onAdLoaded: (Ad ad) {
//       print('Ad Loaded');
//     }, onAdOpened: (Ad ad) {
//       print('Ad opened');
//     }),
//     request: AdRequest());

// class _display_pageState extends State<display_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
