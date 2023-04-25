import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    const double avatarSize = 115;
    const double changeAvatarButtonSize = 46;

    return SizedBox(
      height: avatarSize,
      width: avatarSize,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Image.png'),
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: Container(
              height: changeAvatarButtonSize,
              width: changeAvatarButtonSize,
              decoration: BoxDecoration(
                color: const Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
              ),
              child: IconButton(
                splashRadius: changeAvatarButtonSize / 2,
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
