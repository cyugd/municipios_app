import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Stream del estado de autenticación
  Stream<User?> get user => _auth.authStateChanges();

  // Registro con correo y contraseña
  Future<UserCredential?> signUpWithEmail(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print("Error en el registro: $e");
      rethrow;
    }
  }

  // Inicio de sesión con correo y contraseña
  Future<UserCredential?> signInWithEmail(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print("Error en el inicio de sesión: $e");
      rethrow;
    }
  }

  // Cerrar sesión
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
