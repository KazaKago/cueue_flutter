import 'package:cueue/data/auth/hierarchy/apple/apple_signaturer.dart';
import 'package:cueue/data/auth/hierarchy/google/google_signaturer.dart';
import 'package:cueue/data/auth/hierarchy/password/password_signaturer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final passwordSignaturerProvider = Provider((ref) => const PasswordSignaturer());
final googleSignaturerProvider = Provider((ref) => const GoogleSignaturer());
final appleSignaturerProvider = Provider((ref) => const AppleSignaturer());
