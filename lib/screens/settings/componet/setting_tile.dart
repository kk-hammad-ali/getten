import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class SettingTile extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Icon icon;
  const SettingTile({
    super.key,
    this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: dimensions.getScreenHeight * 0.05,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: dimensions.getScreenWidth * 0.05,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.045,
                fontWeight: FontWeight.bold,
                color: AppColors.greyScale800Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final settings = [
  {
    'text': 'Add Review',
    'icon': const Icon(Icons.star_border),
    'onPressed': () {},
  },
  {
    'text': 'Add Photo or Video',
    'icon': const Icon(Icons.image),
    'onPressed': () {},
  },
  {
    'text': 'Check In',
    'icon': const Icon(Icons.check),
    'onPressed': () {},
  },
  {
    'text': 'Message',
    'icon': const Icon(Icons.message),
    'onPressed': () {},
  },
  {
    'text': 'Notification',
    'icon': const Icon(Icons.notifications),
    'onPressed': () {},
  },
  {
    'text': 'Activity Feed',
    'icon': const Icon(Icons.monitor_heart_outlined),
    'onPressed': () {},
  },
  {
    'text': 'Recently Viewed',
    'icon': const Icon(Icons.alarm),
    'onPressed': () {},
  },
];

final businessSettings = [
  {
    'text': 'Add a Business',
    'icon': const Icon(Icons.business),
    'onPressed': () {},
  },
  {
    'text': 'Explore Getten for Business',
    'icon': const Icon(Icons.data_exploration_rounded),
    'onPressed': () {},
  },
];

final communitySettings = [
  {
    'text': 'Yelp Elite Squad',
    'icon': const Icon(Icons.business),
    'onPressed': () {},
  },
  {
    'text': 'Friends Check In',
    'icon': const Icon(Icons.check),
    'onPressed': () {},
  },
  {
    'text': 'Talk',
    'icon': const Icon(Icons.chat),
    'onPressed': () {},
  },
  {
    'text': 'Event',
    'icon': const Icon(Icons.event),
    'onPressed': () {},
  },
];
