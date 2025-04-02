import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // 디버그 모드일 때만 에뮬레이터 사용
  if (kDebugMode) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  }
  runApp(const VdreamApp());
}

class VdreamApp extends StatelessWidget {
  const VdreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
