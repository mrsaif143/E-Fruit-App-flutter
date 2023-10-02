import 'package:e_fruit_shop/constants/colors.dart';
import 'package:e_fruit_shop/views/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Best Shop Fruit',
      description: 'Sell and buy fruit from different places',
      image: 'assets/onBoradingImages/slide1.png',
    ),
    OnboardingItem(
      title: 'Best Shop Fruit',
      description: 'Get fresh and healthy fruit for you',
      image: 'assets/onBoradingImages/slide2.png',
    ),
    OnboardingItem(
      title: 'Best Shop Fruit',
      description: 'Organic fruit that can be enjoyed by everyone',
      image: 'assets/onBoradingImages/slide3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(onboardingItems.length - 1);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: yellowColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingItems.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingItemWidget(onboardingItems[index]);
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingItems.length,
                      (index) => PageIndicator(
                        isActive: index == _currentPage,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      height: 5,
                      decoration: const BoxDecoration(
                          color: yellowColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: TextButton(
                          onPressed: () {
                            if (_currentPage < onboardingItems.length - 1) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            } else {
                              Get.to(() => const LoginScreen());
                            }
                          },
                          child: Text(
                            _currentPage == onboardingItems.length - 1
                                ? 'Get Started'
                                : 'Next',
                            style: GoogleFonts.montserrat(
                                color: yellowColor,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingItemWidget extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingItemWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          item.image,
          height: 200.0,
        ),
        const SizedBox(height: 32.0),
        Text(
          item.title,
          style: GoogleFonts.montserrat(
              fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
          child: Text(
            item.description,
            style: GoogleFonts.roboto(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class PageIndicator extends StatelessWidget {
  final bool isActive;

  const PageIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? yellowColor : Colors.grey,
      ),
    );
  }
}
