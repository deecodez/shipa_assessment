import 'package:shipa_tracking/lib.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //Google Map
          Positioned.fill(
            child: Container(
              color: Colors.grey.shade300,
              child: const Center(
                child: Text("Google Map Here", style: TextStyle(fontSize: 16)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(maxHeight: size.height * 0.40),
              padding: const EdgeInsets.only(
                bottom: 5,
                top: 10,
                left: 16,
                right: 16,
              ),
              margin: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      //TODO: Replace with actual package image
                      //TODO: Replace all text with theme text
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColors.blackColor.withValues(alpha: 0.6),
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "The package is estimated to arrive within the next 25 minutes.",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textColor.withValues(alpha: 0.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      top: 10,
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor2.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(9999),
                                    child: Image.asset(
                                      AppImages.rider,
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Presley Williams",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Courier",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.textColor2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              // width: 85,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30),
                                // shape: BoxShape.circle,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: AppColors.whiteColor,
                                    child: Icon(
                                      Icons.call_rounded,
                                      color: AppColors.primaryColor,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order ID",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textColor2,
                                  ),
                                ),
                                Text(
                                  "ORD-682834513",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor3.withValues(
                                  alpha: 0.06,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 3,
                                    backgroundColor: AppColors.secondaryColor3,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "On Delivery",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.secondaryColor3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
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
                    ),
                  ),
                  Container(
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.grey900,
                      borderRadius: BorderRadius.circular(100),
                    ),
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
                      width: 22,
                      height: 22,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppColors.transparent,
                        border: Border.all(
                          color: AppColors.secondaryColor,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          border: Border.all(
                            color: AppColors.secondaryColor,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 22,
                    ),

              if (!isLast)
                Expanded(
                  child: SizedBox(
                    width: 2,
                    child: CustomPaint(
                      painter: DashedLinePainter(color: AppColors.greyColor),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: AppColors.textColor2,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (!isLast) ...[
                          const SizedBox(height: 4),
                          Text(
                            subtitle2 ?? '',
                            style: TextStyle(
                              color: AppColors.textColor2,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  /// trailing (right side)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trailingTop,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor2,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        trailingBottom,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.textColor,
                        ),
                      ),
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

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashHeight;
  final double dashSpacing;

  DashedLinePainter({
    required this.color,
    this.dashHeight = 6,
    this.dashSpacing = 4,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.width
      ..strokeCap = StrokeCap.round;

    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
