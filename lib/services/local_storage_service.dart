// local_storage_service.dart
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // Save data to local storage
  Future<void> saveData(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  // Get data from local storage
  Future<String?> getData(String key) async {
    return await _secureStorage.read(key: key);
  }

  // Delete data from local storage
  Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }

  // Check if data exists in local storage
  Future<bool> containsData(String key) async {
    String? value = await getData(key);
    return value != null;
  }

  // Clear all data from local storage
  Future<void> clearStorage() async {
    await _secureStorage.deleteAll();
  }
}
