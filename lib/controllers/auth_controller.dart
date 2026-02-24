import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/user_profile.dart';
import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Rx<UserProfile?> userProfile = Rx<UserProfile?>(null);
  final RxBool isLoading = false.obs;

  Future<void> login() async {
    try {
      isLoading.value = true;
      // Note: Real Google Sign-In requires configuration (SHA-1, etc.)
      // For this assignment, if it fails (due to lack of config), we'll use a mock user
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      
      if (account != null) {
        userProfile.value = UserProfile(
          id: account.id,
          name: account.displayName ?? 'User',
          email: account.email,
          photoUrl: account.photoUrl ?? '',
        );
        Get.offAllNamed(Routes.DASHBOARD);
      } else {
        // Mocking login for demonstration if cancelled or fails in dev env
        _mockLogin();
      }
    } catch (error) {
      print('Google Sign-In Error: $error');
      _mockLogin();
    } finally {
      isLoading.value = false;
    }
  }

  void _mockLogin() {
    userProfile.value = UserProfile(
      id: 'mock_123',
      name: 'John Doe',
      email: 'john.doe@example.com',
      photoUrl: 'https://ui-avatars.com/api/?name=John+Doe&background=6C63FF&color=fff',
    );
    Get.offAllNamed(Routes.DASHBOARD);
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
    userProfile.value = null;
    Get.offAllNamed(Routes.LOGIN);
  }
}
