import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeviceId {
  static const _kPrefKey = 'com.bewithme.device_id';
  static const _numericLength = 10;

  /// Produces a 10-digit numeric string from a seed (stable for same seed).
  static String _toNumeric10(String seed) {
    final hash = seed.hashCode.toUnsigned(32);
    final value = hash % 10000000000; // 0..9999999999
    return value.toString().padLeft(_numericLength, '0');
  }

  /// Produces a random 10-digit numeric string.
  static String _randomNumeric10() {
    final value = Random().nextInt(10000000000);
    return value.toString().padLeft(_numericLength, '0');
  }

  static bool _isValidNumeric10(String? s) =>
      s != null &&
      s.length == _numericLength &&
      s.runes.every((r) => r >= 0x30 && r <= 0x39);

  static Future<String> getId() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // 1) Return cached value if present and valid (10 digits)
      final cached = prefs.getString(_kPrefKey);
      if (_isValidNumeric10(cached)) {
        return cached!;
      }

      // 2) Try platform-specific seed
      final deviceInfo = DeviceInfoPlugin();
      String? seed;

      try {
        if (Platform.isAndroid) {
          final androidInfo = await deviceInfo.androidInfo;
          seed = [
            androidInfo.id,
            androidInfo.brand,
            androidInfo.product,
            androidInfo.model,
          ].join('|');
        } else if (Platform.isIOS) {
          final iosInfo = await deviceInfo.iosInfo;
          seed = iosInfo.identifierForVendor;
        } else if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
          seed = null;
        } else if (kIsWeb) {
          seed = null;
        }
      } catch (_) {
        seed = null;
      }

      // 3) 10-digit numeric ID from seed or random
      final id = seed != null && seed.isNotEmpty
          ? _toNumeric10(seed)
          : _randomNumeric10();

      // 4) Persist and return
      await prefs.setString(_kPrefKey, id);
      return id;
    } on PlatformException catch (e) {
      if (e.code == 'channel-error' || e.message?.contains('channel') == true) {
        return _randomNumeric10();
      }
      rethrow;
    } catch (_) {
      return _randomNumeric10();
    }
  }
}