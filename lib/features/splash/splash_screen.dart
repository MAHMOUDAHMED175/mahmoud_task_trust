import 'package:flutter/material.dart';
import 'package:mahmoud_task_trust/core/di/injection.dart';
import 'package:mahmoud_task_trust/features/cart/domain/usecases/get_guest_id.dart';
import 'package:mahmoud_task_trust/features/categories/presentation/screens/main_screen.dart';
import 'package:mahmoud_task_trust/core/usecases/usecase.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Fetch the guest ID
    await getIt<GetGuestId>().call(NoParams());

    // Navigate to the home screen
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text(AppLocalizations.of(context)!.pleaseWait),
          ],
        ),
      ),
    );
  }
}
