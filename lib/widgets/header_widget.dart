import 'package:flineicons/flineicons.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('assets/images/ig_logo.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Icon(
          MdiIcons.heartOutline,
          size: 30,
        ),
        Icon(
          FLineIcons.facebookMessenger,
          size: 30,
        ),
      ],
    );
  }
}
