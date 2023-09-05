import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_circle_container.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SizedBox(
      width: dimensions.getScreenWidth * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCircleIconContainer(
            onPressed: () {},
            icon: Icons.star,
            text: 'Add Review',
            iconBGColor: AppColors.disabledColor.withOpacity(0.6),
            iconColor: AppColors.blackColor,
            textColor: AppColors.blackColor,
          ),
          CustomCircleIconContainer(
            onPressed: () {},
            icon: Icons.image,
            text: 'Add Photo',
            iconBGColor: AppColors.disabledColor.withOpacity(0.6),
            iconColor: AppColors.blackColor,
            textColor: AppColors.blackColor,
          ),
          CustomCircleIconContainer(
            onPressed: () {},
            icon: Icons.check,
            text: 'Check- In',
            iconBGColor: AppColors.disabledColor.withOpacity(0.6),
            iconColor: AppColors.blackColor,
            textColor: AppColors.blackColor,
          ),
          CustomCircleIconContainer(
            onPressed: () {},
            icon: Icons.business,
            text: 'Add Business',
            iconBGColor: AppColors.disabledColor.withOpacity(0.6),
            iconColor: AppColors.blackColor,
            textColor: AppColors.blackColor,
          ),
        ],
      ),
    );
  }
}
