import '/app/exports.dart';

class RadialGaugeChart extends StatelessWidget {
  const RadialGaugeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.w,
      height: 140.h,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 90,
            showLabels: false,
            showTicks: false,

            axisLineStyle: AxisLineStyle(
              thickness: 20,
              color: AppColors.skyBlue.withOpacity(0.4),
              cornerStyle: CornerStyle.bothCurve,
            ),

            pointers: <GaugePointer>[
              RangePointer(
                value: 50,
                width: 20,
                color: AppColors.primary,
                cornerStyle: CornerStyle.bothCurve,
              ),
            ],

            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                positionFactor: 0.01,
                angle: 90,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '55.00',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryText,
                      ),
                    ),
                    Text(
                      'kWh/Sqft',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
