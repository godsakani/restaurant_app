import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/onboard.dart';
import '../../styles/color_manager.dart';
import '../../utils/values_manager.dart';
import '../../utils/assets_manager.dart';
import '../../utils/strings_manager.dart';
import '../../widget/onboarding.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final List<SliderObject> _list = _getSliderData();
  PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;
  List<SliderObject> _getSliderData() => [
        SliderObject(ImageAssets.onboard1, AppString.onboardingTitle1,
            AppString.onboardingBody1),
        SliderObject(ImageAssets.onboard2, AppString.onboardingTitle2,
            AppString.onboardingBody2),
        SliderObject(ImageAssets.onboard3, AppString.onboardingTitle3,
            AppString.onboardingBody3),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.whiteColor,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Onboarding(
              sliderObject: _list[index],
            );
          }),
      bottomSheet: Container(
        color: ColorManager.whiteColor,
        height: AppSize.s100,
        child: Column(
          children: [
            _getBottomSheet(),
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.rightArrow),
            ),
            onTap: () {
              //Next Slide
              _pageController.animateToPage(_getPreviousIndex(),
                  duration: const Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.easeIn);
            },
          ),
        ),

//circle indicator

        Row(children: [
          for (int i = 0; i < _list.length; i++)
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: _getProperCircle(i),
            )
        ]),

        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: SvgPicture.asset(ImageAssets.rightArrow),
            ),
            onTap: () {
              //Next Slide
              _pageController.animateToPage(_getNextIndex(),
                  duration: const Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.easeIn);
            },
          ),
        ),
      ],
    );
  }

  Widget _getProperCircle(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImageAssets.selectedIcon);
    } else {
      return SvgPicture.asset(ImageAssets.unselectedIcon);
    }
  }

  @override
  void dispose() {
    // TODO: viewModel.dispose();
    super.dispose();
  }

  int _getPreviousIndex() {
    int previousIndex = _currentIndex--;
    if (previousIndex == -1) {
      _currentIndex = _list.length - 1; //
    }
    return _currentIndex;
  }

  int _getNextIndex() {
    int nextIndex = _currentIndex++;
    if (nextIndex > _list.length) {
      _currentIndex = 0; //
    }
    return _currentIndex;
  }
}
