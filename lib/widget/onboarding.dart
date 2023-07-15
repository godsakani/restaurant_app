import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../domain/onboard.dart';
import '../utils/strings_manager.dart';
import '../utils/values_manager.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key, required this.sliderObject}) : super(key: key);

  final SliderObject sliderObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s0,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleSmall,
              AppString.skip,
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s0,
        ),
        SvgPicture.asset('${sliderObject.image}'),
        // Image.asset('${sliderObject.image}'),
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            "${sliderObject.title}",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            "${sliderObject.body}",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
