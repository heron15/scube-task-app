import '/app/exports.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double errorIconSize;
  final double borderRadius;

  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.errorIconSize,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        placeholder: (context, url) => ShimmerWidget(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Icon(
            Icons.error,
            size: errorIconSize,
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
