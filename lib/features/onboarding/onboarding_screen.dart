import 'package:flutter/material.dart';
import 'package:map/app/service/app_service.dart';
import 'package:map/di/locator.dart';
import 'package:map/util/navigator_keys.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 24,
          ),
        ),
        const Text(
          "onboarding!",
        ),
        OutlinedButton(
          onPressed: _onNext,
          child: const Text(
            "Next",
          ),
        ),
      ],
    );
  }

  _onNext() {
    final appService = locator.get<AppService>();
    appService.markOnboardingShown();

    Navigator.of(context).pushNamed(
      RootNavigationKeys.main,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
