import '/app/exports.dart';

class CustomDropdownField<T> extends StatelessWidget {
  const CustomDropdownField({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.hintText,
    this.validator,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.enabled = true,
    this.contentPaddingHorizontal = 15,
    this.contentPaddingVertical = 14,
    this.borderRadius = 15,
    this.borderColor = AppColors.border,
    this.borderWidth = 2,
    this.iconColor = AppColors.grey,
    this.textColor = AppColors.primaryText,
    this.itemBuilder,
  });

  final List<T> items;
  final T? value;
  final void Function(T?)? onChanged;
  final String hintText;
  final String? Function(T? value)? validator;
  final double topPadding;
  final double bottomPadding;
  final bool enabled;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color iconColor;
  final Color textColor;
  final String Function(T)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
      child: DropdownButtonFormField<T>(
        value: value,
        items: items.map((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Text(
              itemBuilder != null ? itemBuilder!(item) : item.toString(),
              style: TextStyle(
                fontSize: 16.sp,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        }).toList(),
        onChanged: enabled ? onChanged : null,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          errorMaxLines: 2,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: contentPaddingVertical.h,
            horizontal: contentPaddingHorizontal.w,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontSize: 14.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              width: borderWidth,
              color: AppColors.red,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
        ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: iconColor,
        ),
        isExpanded: true,
        dropdownColor: AppColors.white,
        style: TextStyle(
          fontSize: 16.sp,
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
