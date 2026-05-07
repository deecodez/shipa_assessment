import 'package:shipa_tracking/lib.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body(
                  "Order ID",
                  fontSize: 12.sp,
                  textColor: AppColors.textColor2,
                ),
                AppText.body("ORD-682834513", fontWeight: FontWeight.w500),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor3.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColors.secondaryColor3,
                  ),
                  XBox(6),
                  AppText.body(
                    "On Delivery",
                    fontSize: 12.sp,
                    textColor: AppColors.secondaryColor3,
                  ),
                ],
              ),
            ),
          ],
        ),
        YBox(30),
        Column(
          children: const [
            DeliveryTimelineItem(
              isActive: true,
              isLast: false,
              title: "On Delivery",
              subtitle: "Courier is delivering the package",
              subtitle2: "25 minutes destination",
              trailingTop: "10:47 AM",
              trailingBottom: "18 Jan, 2026",
            ),

            DeliveryTimelineItem(
              isActive: false,
              isLast: true,
              title: "Delivered",
              subtitle: "Akobo, Ibadan",
              trailingTop: "----------",
              trailingBottom: "----------",
            ),
          ],
        ),
      ],
    );
  }
}
