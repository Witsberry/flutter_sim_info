import 'dart:async';
import 'package:flutter/services.dart';

class SimInfo {
  static const MethodChannel _channel = MethodChannel('flutter.moum.sim_info');

  static Future<bool?> getAllowsVOIP async {
    try {
      final value = await _channel.invokeMethod<bool>('allowsVOIP');
      return value;
    } catch (e) {
      print('Error getting allowsVOIP: $e');
      return null;
    }
  }

  static Future<String?> getCarrierName async {
    try {
      final value = await _channel.invokeMethod<String>('carrierName');
      return value;
    } catch (e) {
      print('Error getting carrierName: $e');
      return null;
    }
  }

  static Future<String?> getIsoCountryCode async {
    try {
      final value = await _channel.invokeMethod<String>('isoCountryCode');
      return value;
    } catch (e) {
      print('Error getting isoCountryCode: $e');
      return null;
    }
  }

  static Future<String?> getMobileCountryCode async {
    try {
      final value = await _channel.invokeMethod<String>('mobileCountryCode');
      return value;
    } catch (e) {
      print('Error getting mobileCountryCode: $e');
      return null;
    }
  }

  static Future<String?> getMobileNetworkCode async {
    try {
      final value = await _channel.invokeMethod<String>('mobileNetworkCode');
      return value;
    } catch (e) {
      print('Error getting mobileNetworkCode: $e');
      return null;
    }
  }
}
