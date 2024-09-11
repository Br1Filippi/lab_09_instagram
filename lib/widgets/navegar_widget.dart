import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavegarWidget extends StatelessWidget {
  const NavegarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 90,
      indicatorColor: Colors.transparent,
      destinations: [
        NavigationDestination(
          icon: Icon(
            MdiIcons.home,
            color: Colors.black,
          ),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(
            MdiIcons.plusBoxOutline,
            color: Colors.black,
          ),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(
            MdiIcons.moviePlayOutline,
            color: Colors.black,
          ),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(
            MdiIcons.accountCircle,
            color: Colors.black,
          ),
          label: '',
        ),
      ],
    );
  }
}
