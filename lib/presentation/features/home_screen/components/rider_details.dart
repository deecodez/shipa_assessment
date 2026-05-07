import 'package:shipa_tracking/lib.dart';

class RiderDetails extends StatelessWidget {
  const RiderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9999.r),
                child: Image.asset(
                  AppImages.rider,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            XBox(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body("Presley Williams", fontWeight: FontWeight.w500),
                AppText.body("Courier", textColor: AppColors.textColor2),
              ],
            ),
          ],
        ),
        CallButton(),
      ],
    );
  }
}

class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 12.r,
            backgroundColor: AppColors.whiteColor,
            child: Icon(
              Icons.phone_outlined,
              color: AppColors.primaryColor,
              size: 16.sp,
            ),
          ),
          XBox(6),
          AppText.body(
            "Call",
            fontWeight: FontWeight.w500,
            textColor: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
