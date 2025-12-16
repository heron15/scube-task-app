import '/app/exports.dart';

class SldTabContainer extends StatelessWidget {
  const SldTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Column(
            children: [
              Text('SLD'),
            ],
          ),
        );
      },
    );
  }
}
