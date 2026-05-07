import 'package:shipa_tracking/lib.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          //Google Map
          Positioned.fill(
            child: Container(
              color: Colors.grey.shade300,
              child: const Center(
                child: AppText.body('Google Map Here'),
                
              ),
            ),
          ),
          BottomCard(),
        ],
      ),
    );
  }
}






