import 'package:shipa_tracking/lib.dart';

class DeliveryTimelineItem extends StatelessWidget {
  final bool isActive;
  final bool isLast;
  final String title;
  final String subtitle;
  final String? subtitle2;
  final String trailingTop;
  final String trailingBottom;

  const DeliveryTimelineItem({
    super.key,
    required this.isActive,
    required this.isLast,
    required this.title,
    required this.subtitle,
    this.subtitle2,
    required this.trailingTop,
    required this.trailingBottom,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              isActive
                  ? Container(
                      width: 22.w,
                      height: 22.h,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppColors.transparent,
                        border: Border.all(
                          color: AppColors.secondaryColor,
                          width: 2.w,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 16.w,
                        height: 16.w,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          border: Border.all(
                            color: AppColors.secondaryColor,
                            width: 2.w,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 24.sp,
                    ),

              if (!isLast)
                Expanded(
                  child: SizedBox(
                    width: 2.w,
                    child: CustomPaint(
                      painter: DashedLinePainter(color: AppColors.greyColor),
                    ),
                  ),
                ),
            ],
          ),

          XBox(10),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.body(
                          title,
                          textColor: AppColors.textColor2,
                          fontSize: 12.sp,
                        ),

                        YBox(2),
                        AppText.body(
                          subtitle,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),

                        if (!isLast) ...[
                          const SizedBox(height: 4),
                          AppText.body(
                            subtitle2 ?? '',
                            textColor: AppColors.textColor2,
                            fontSize: 12.sp,
                          ),
                        ],
                      ],
                    ),
                  ),

                  XBox(8),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body(
                        trailingTop,
                        textColor: AppColors.textColor2,
                        fontSize: 12.sp,
                      ),
                      YBox(2),
                      AppText.body(trailingBottom, fontWeight: FontWeight.w500),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
