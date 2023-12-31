import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/constant/constant.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_dropdown_widget.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_small_heading_widget.dart';
import 'package:getten/widget/custom_text_field_widget.dart';
import 'package:getten/widget/password_textfields_widget.dart';

class BusinessTextFeilds extends StatefulWidget {
  const BusinessTextFeilds({super.key});

  @override
  State<BusinessTextFeilds> createState() => _BusinessTextFeildsState();
}

class _BusinessTextFeildsState extends State<BusinessTextFeilds> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confrimPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomSmallHeading(text: 'Business Name'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your name',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _nameController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Website'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your website URL',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _websiteController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Country'),
        CustomDropDownWidget(
          initialValue: "Afghanistan",
          list: countries,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'State'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your state',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _addressController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'City'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your business city',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _addressController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Address'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your business address',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _addressController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Email Address'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your email address',
          inputType: TextInputType.emailAddress,
          inputAction: TextInputAction.next,
          controller: _emailController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Phone Number'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your phone number',
          inputType: TextInputType.phone,
          inputAction: TextInputAction.next,
          controller: _phoneController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Business Category'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your business type',
          inputType: TextInputType.phone,
          inputAction: TextInputAction.next,
          controller: _phoneController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Password'),
        CustomPasswordFeildWidget(
          hintText: 'Enter your password',
          controller: _passwordController,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Confirm Password'),
        CustomPasswordFeildWidget(
          textInputAction: TextInputAction.done,
          hintText: 'Re-enter your password',
          controller: _confrimPasswordController,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Business Logo'),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        Container(
          height: dimensions.getScreenHeight * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.blackColor.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(
              dimensions.getScreenWidth * 0.03,
            ),
          ),
          child: Center(
            child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AppImages.uploadSVG,
                )),
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        CustomLongButtonWidget(
          text: 'Sign Up',
          height: dimensions.getScreenHeight * 0.065,
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
