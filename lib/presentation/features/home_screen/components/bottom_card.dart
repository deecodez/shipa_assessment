import 'package:shipa_tracking/lib.dart';

class BottomCard extends ConsumerWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eta = ref.watch(etaProvider);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,

        padding: EdgeInsets.only(
          bottom: 10.h,
          top: 15.h,
          left: 16.w,
          right: 16.h,
        ),
        margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10.r)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: AppColors.blackColor.withValues(alpha: 0.6),
                  size: 20.sp,
                ),
                XBox(8),

                Expanded(
                  child: AppText.body(
                    eta.arrived
                        ? 'Your package has arrived at its destination'
                        : 'The package is estimated to arrive within the next ${eta.formatted}',
                    fontSize: 12.sp,
                    textColor: AppColors.textColor.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
            YBox(20),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                bottom: 10.h,
                top: 10.h,
                left: 16.w,
                right: 16.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor2.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [RiderDetails(), YBox(10), OrderDetails()],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 134.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: AppColors.grey900,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
