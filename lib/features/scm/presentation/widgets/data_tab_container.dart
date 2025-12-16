import '/app/exports.dart';

class DataTabContainer extends StatelessWidget {
  const DataTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ScmScreenProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Column(
            children: [
              Text('Data'),
            ],
          ),
        );
      },  
    );
  }
}