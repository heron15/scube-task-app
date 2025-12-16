import '/app/exports.dart';

class OptionDetailsScreen extends StatefulWidget {
  final String title;
  static const String routeName = '/option-details';

  const OptionDetailsScreen({super.key, required this.title});

  @override
  State<OptionDetailsScreen> createState() => _OptionDetailsScreenState();
}

class _OptionDetailsScreenState extends State<OptionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _optionDetailsScreenAppBar(),
      body: _optionDetailsScreenBody(),
    );
  }

  Widget _optionDetailsScreenBody() {
    return SafeArea(
      child: AppBackground(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.grey.withOpacity(0.8), width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5.h,
            children: [
              _emptyLogoImage(),
              _noDataText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _noDataText() {
    return Text(
      "No data is here,\nplease wait.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.secondaryText,
      ),
    );
  }

  Widget _emptyLogoImage() {
    return Image.asset(
      AssetsPath.emptySearch,
      width: 200.w,
      height: 140.h,
      fit: BoxFit.fitHeight,
    );
  }

  AppBar _optionDetailsScreenAppBar() {
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
      actions: [
        SvgPicture.asset(
          AssetsPath.bell,
          width: 20.w,
          height: 20.h,
        ),
      ],
      actionsPadding: EdgeInsets.only(right: 16.w),
    );
  }
}
