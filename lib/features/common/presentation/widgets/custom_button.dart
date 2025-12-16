import '/app/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isEnabled = true,
    this.leftIcon,
    this.rightIcon,
    this.showCenterProgressIndicator = false,
    this.height,
    this.width,
    this.buttonColor,
    this.borderRadius = 25,
    this.textColor,
    this.borderWidth = 0,
    this.borderWidthColor = AppColors.grey,
    this.borderIsEnable = false,
    this.leftIconColor = AppColors.white,
    this.fontSize = 16,
    this.leftIconSize = 16,
    this.rightIconSize = 16,
    this.isIcon = false,
    this.leftIconData,
  });

  final String text;
  final VoidCallback? onTap;
  final bool isEnabled;
  final String? leftIcon;
  final String? rightIcon;
  final bool showCenterProgressIndicator;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final double borderRadius;
  final Color? textColor;
  final double borderWidth;
  final Color borderWidthColor;
  final Color leftIconColor;
  final bool borderIsEnable;
  final double fontSize;
  final double leftIconSize;
  final double rightIconSize;
  final bool isIcon;
  final IconData? leftIconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        width: width ?? double.maxFinite,
        height: height ?? 45.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? buttonColor ?? AppColors.primary : Colors.grey,
          borderRadius: BorderRadius.circular(borderRadius.r),
          border: borderIsEnable ? Border.all(width: borderWidth, color: borderWidthColor) : null,
        ),
        child: showCenterProgressIndicator
            ? SpinKitLoading(
                type: SpinKitType.threeBounce,
                color: AppColors.white,
                size: 20.sp,
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isIcon)
                    Icon(
                      leftIconData!,
                      color: leftIconColor,
                      size: leftIconSize.w,
                    ),
                  if (isIcon) SizedBox(width: 10.w),
                  if (!isIcon)
                    if (leftIcon != null)
                      SvgPicture.asset(
                        leftIcon!,
                        height: leftIconSize.w,
                        width: leftIconSize.w,
                        fit: BoxFit.fitWidth,
                        colorFilter: leftIconColor != AppColors.white
                            ? ColorFilter.mode(
                                leftIconColor,
                                BlendMode.srcIn,
                              )
                            : null,
                      ),
                  if (leftIcon != null) SizedBox(width: 12.w),
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? AppColors.white,
                      fontSize: fontSize.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  if (rightIcon != null)
                    SvgPicture.asset(
                      rightIcon!,
                      height: rightIconSize.w,
                      width: rightIconSize.w,
                      fit: BoxFit.fitWidth,
                      colorFilter: const ColorFilter.mode(
                        AppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
