import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pub.dev'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: Icon(FontAwesomeIcons.cartShopping),
            ),
            const Center(
              child: Icon(FontAwesomeIcons.appleWhole),
            ),
            const ReadMoreText(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(color: Colors.blueGrey),
              lessStyle: TextStyle(color: Colors.blueGrey),
            ),
            badges.Badge(
              showBadge: true,
              position: badges.BadgePosition.topEnd(top: -10, end: -12),
              badgeContent: const Text('1'),
              badgeAnimation: const badges.BadgeAnimation.slide(
                  animationDuration: Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn),
              badgeStyle: const badges.BadgeStyle(
                badgeColor: Colors.blue,
                shape: badges.BadgeShape.circle,
              ),
              child: const Icon(FontAwesomeIcons.amazon),
            ),
            const SizedBox(
              height: 20,
            ),
            PinCodeTextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              obscuringCharacter: '*',
              appContext: context,
              length: 6,
              pinTheme: PinTheme(
                  inactiveColor: Colors.blueGrey,
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                child: AnimatedTextKit(
                    stopPauseOnTap: true,
                    repeatForever: true,
                    animatedTexts: [
                      // ScaleAnimatedText('Think'),
                      // ScaleAnimatedText('Build'),
                      // ScaleAnimatedText('Ship'),
                      // RotateAnimatedText('AWESOME'),
                      // FadeAnimatedText('Fade Animated Text'),
                      // WavyAnimatedText('Wavy Animated Text'),
                      // FlickerAnimatedText('Flicker Animated Text'),
                      TypewriterAnimatedText('Discipline is the best tool',
                          curve: Curves.decelerate,
                          speed: Duration(milliseconds: 30))
                    ]))
          ],
        ),
      ),
    );
  }
}
