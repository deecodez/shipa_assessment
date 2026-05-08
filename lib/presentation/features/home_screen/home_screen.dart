import 'package:shipa_tracking/lib.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          //Google Map
          Positioned.fill(
            child: MapWidget()
          ),
          BottomCard(),
        ],
      ),
    );
  }
}






