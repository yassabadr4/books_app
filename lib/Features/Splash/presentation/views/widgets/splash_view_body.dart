import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utiles/app_router.dart';
import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }



  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(BooklyAssets.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 4),
          () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.fadeIn, duration: kTransitionDuration);
            GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 2,
        ));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
