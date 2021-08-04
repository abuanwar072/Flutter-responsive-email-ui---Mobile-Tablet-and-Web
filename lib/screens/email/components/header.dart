import 'package:flutter/material.dart';
import 'package:outlook/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            icon: Image.asset(
              "assets/Icons/trash.png",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/Icons/reply.png",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/Icons/replyall.png",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/Icons/transfer.png",
              width: 24,
            ),
            onPressed: () {},
          ),
          Spacer(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: Image.asset(
                "assets/Icons/printer.png",
                width: 24,
              ),
              onPressed: () {},
            ),
          IconButton(
            icon: Image.asset(
              "assets/Icons/markup.png",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/Icons/morevertical.png",
              width: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
