import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BannerSection(),
        const CashInfo(),
      ],
    );
  }
}

class BannerSection extends StatefulWidget {
  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> _imgList = [
    "assets/images/71577e1cf59d802.jpg",
    "assets/images/banner-1631296__340.webp",
    "assets/images/minimal-style-gray-abstract-banner-with-stripes-design_1017-39617.webp",
    "assets/images/pngtree-pure-color-watercolor-graffiti-gradient-background-board-design-board-design-image_66713.jpg",
    "assets/images/tải xuống.jpg",
  ];
  late int _current;

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBanner(),
        _buildIndicator(),
      ],
    );
  }

  Container _buildBanner() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.873,
          viewportFraction: 1.0,
          autoPlay: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: _imgList
            .map((i) => Image.asset(
                  i,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ))
            .toList(),
      ),
    );
  }

  _buildIndicator() => Positioned(
        bottom: 0,
        left: 0,
        child: Row(
            children: _imgList.map((url) {
          int index = _imgList.indexOf(url);
          return Text(
            _current == index ? "●" : "○",
            style: TextStyle(fontSize: 20, color: Colors.white),
          );
        }).toList()),
      );
}

class CashInfo extends StatelessWidget {
  const CashInfo();

  @override
  Widget build(BuildContext context) {
    final verticalDriver = VerticalDivider(
      indent: 5,
      endIndent: 5,
      thickness: 1.5,
      width: 24,
      color: Colors.white,
    );
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Image.network(
              "https://cdn1.iconfinder.com/data/icons/business-shop-finance-symbols-set-3/91/Business_-_Shop_-_Finance_137-512.png",
              width: 50,
              height: 50,
              color: Colors.black,
            ),
            verticalDriver,
            _buildInfo(
                image: "https://cdn-icons-png.flaticon.com/512/174/174861.png",
                title: "50000.00",
                subTitle: "Cash on hand"),
            verticalDriver,
            _buildInfo(
                image:
                    "https://www.pngrepo.com/png/167109/180/dollar-coin-circle-with-symbol.png",
                title: "0",
                subTitle: "Cash on hand",
                isCoin: true),
          ],
        ),
      ),
    );
  }

  _buildInfo(
      {required String image,
      required String title,
      required String subTitle,
      bool isCoin = false}) {
    final height1 = 22.0;
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Container(
              height: height1,
              child: Row(
                children: [
                  Image.network(
                    image,
                    width: 20,
                    height: isCoin ? height1 - 7.0 : null,
                    color: isCoin ? Colors.amber : null,
                  ),
                  SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
