import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/email_screen.dart';

class AuthButton extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final String linkKind;
  final String link;

  const AuthButton({
    super.key,
    required this.icon,
    required this.text,
    required this.linkKind,
    required this.link,
  });

  void _onTap(BuildContext context) {
    if (linkKind == "signup") {
      switch (link) {
        case "email":
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EmailScreen(),
            ),
          );
          break;
        case "apple":
          break;
      }
    } else if (linkKind == "login") {}
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          padding: const EdgeInsets.all(
            Sizes.size14,
          ),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.grey.shade300,
            width: Sizes.size1,
          )),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
