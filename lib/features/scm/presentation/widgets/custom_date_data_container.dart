import '/app/exports.dart';

class CustomDateDataContainer extends StatelessWidget {
  const CustomDateDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final customDateData = getIt<ScmScreenProvider>().customDateData;

    if (customDateData.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        _datePickerPart(context),
        SizedBox(height: 12.h),
        _ldataListViewPart(customDateData),
      ],
    );
  }

  Widget _ldataListViewPart(List<ListOfDateWiseDataItem> customDateData) {
    return ListView.builder(
      itemCount: customDateData[0].dateWiseDataItemList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return DateWiseDataListItem(
          dateWiseDataItem: customDateData[0].dateWiseDataItemList[index],
          index: index,
        );
      },
    );
  }

  Widget _datePickerPart(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomTextFormField(
            textEditingController: getIt<ScmScreenProvider>().fromDateController,
            textInputType: TextInputType.text,
            hintText: 'From Date',
            contentPaddingHorizontal: 10.w,
            contentPaddingVertical: 5.h,
            borderRadius: 8.r,
            showSuffixIcon: true,
            suffixOtherIconOnTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2025),
                lastDate: DateTime(2026),
              ).then((value) {
                if (value != null) {
                  getIt<ScmScreenProvider>().fromDateController.text = value.toString();
                }
              });
            },
          ),
        ),
        Expanded(
          child: CustomTextFormField(
            textEditingController: getIt<ScmScreenProvider>().toDateController,
            textInputType: TextInputType.text,
            hintText: 'To Date',
            contentPaddingHorizontal: 10.w,
            contentPaddingVertical: 5.h,
            borderRadius: 8.r,
            showSuffixIcon: true,
            suffixOtherIconOnTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2025),
                lastDate: DateTime(2026),
              ).then((value) {
                if (value != null) {
                  getIt<ScmScreenProvider>().toDateController.text = value.toString();
                }
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.primary),
          ),
          child: Icon(
            Icons.search,
            color: AppColors.primary,
            size: 24.sp,
          ),
        ),
      ],
    );
  }
}
