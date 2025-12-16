import '/app/exports.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.textInputType,
    required this.hintText,
    this.showSuffixIcon = false,
    this.validator,
    this.onChanged,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.obscureText = false,
    this.maxLine = 1,
    this.minLine = 1,
    this.enabled = true,
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
    this.labelText,
    this.suffixIconPasswordType = false,
    this.suffixOtherIcon = Icons.calendar_month,
    this.suffixOtherIconOnTap,
    this.suffixProgressIndicatorShow = false,
    this.inputFieldTextColor = AppColors.primaryText,
    this.suffixOtherIconColor = AppColors.grey,
    this.readOnly = false,
    this.maxLength,
    this.contentPaddingHorizontal = 15,
    this.contentPaddingVertical = 14,
    this.borderRadius = 15,
    this.borderColor = AppColors.border,
    this.borderWidth = 2,
  });

  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String hintText;
  final bool showSuffixIcon;
  final String? Function(String? value)? validator;
  final String? Function(String? value)? onChanged;
  final double topPadding;
  final double bottomPadding;
  final bool obscureText;
  final int maxLine;
  final int minLine;
  final bool enabled;
  final FloatingLabelBehavior floatingLabelBehavior;
  final String? labelText;
  final bool suffixIconPasswordType;
  final IconData suffixOtherIcon;
  final VoidCallback? suffixOtherIconOnTap;
  final bool suffixProgressIndicatorShow;
  final Color inputFieldTextColor;
  final Color suffixOtherIconColor;
  final bool readOnly;
  final int? maxLength;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.topPadding, bottom: widget.bottomPadding),
      child: TextFormField(
        minLines: widget.minLine,
        onTapOutside: (value) {
          FocusScope.of(context).unfocus();
        },
        onChanged: widget.onChanged,
        controller: widget.textEditingController,
        keyboardType: widget.textInputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppColors.border,
        obscureText: _obscureText,
        maxLines: widget.maxLine,
        maxLength: widget.maxLength,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        style: TextStyle(
          fontSize: 16.sp,
          color: widget.inputFieldTextColor,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          fillColor: AppColors.white,
          errorMaxLines: 2,
          filled: true,
          counterText: "",
          helperText: ' ',
          helperStyle: const TextStyle(height: 0.01, fontSize: 0),
          errorStyle: TextStyle(
            fontSize: 12.sp,
            height: 0.8,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: widget.contentPaddingVertical.h,
            horizontal: widget.contentPaddingHorizontal.w,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontSize: 14.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              width: widget.borderWidth,
              color: widget.borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              width: widget.borderWidth,
              color: widget.borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              width: widget.borderWidth,
              color: widget.borderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              width: widget.borderWidth,
              color: AppColors.red,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              width: widget.borderWidth,
              color: widget.borderColor,
            ),
          ),
          suffixIcon: Visibility(
            visible: widget.showSuffixIcon,
            child: widget.suffixProgressIndicatorShow
                ? Container(
                    width: 20.0.w,
                    height: 30.0.h,
                    margin: EdgeInsets.only(right: 10.w),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                        strokeWidth: 2.w,
                      ),
                    ),
                  )
                : IconButton(
                    onPressed: widget.suffixIconPasswordType
                        ? () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          }
                        : widget.suffixOtherIconOnTap,
                    icon: Icon(
                      widget.suffixIconPasswordType
                          ? _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off
                          : widget.suffixOtherIcon,
                      color: widget.suffixOtherIconColor,
                    ),
                  ),
          ),
          floatingLabelBehavior: widget.floatingLabelBehavior,
          labelText: widget.labelText,
          labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.primaryText),
        ),
        validator: widget.validator,
      ),
    );
  }
}
