import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthController extends GetxController{
final auth = FirebaseAuth.instance;
RxBool isLoading = false.obs;


//for login
Future<void> login(String email, String password) async{
  isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed("/Homepage");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
}



//this is for signup
Future<void> createUser(String email, String password, String name) async{
  isLoading.value = true;
  try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
       await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Account Created 🔥🔥");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
}




}