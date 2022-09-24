import 'package:Venti/DTOs/SecureStorage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecurePreferencesService {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  Future<void> writeSecureData(SecureStorage item) async {
    print("Writing");
    await _secureStorage.write(
        key: item.key, value: item.value, aOptions: _getAndroidOptions());
    print("Written");
  }

  Future<String?> readSecureData(String key) async {
    print("Reading");
    var readData =
        await _secureStorage.read(key: key, aOptions: _getAndroidOptions());
    return readData;
  }

  Future<void> deleteSecureData(String item) async {
    await _secureStorage.delete(key: item, aOptions: _getAndroidOptions());
  }

  Future<bool> containsKeyInSecureData(String key) async {
    var containsKey = await _secureStorage.containsKey(
        key: key, aOptions: _getAndroidOptions());
    return containsKey;
  }

  Future<List<SecureStorage>> readAllSecureData() async {
    var allData = await _secureStorage.readAll(aOptions: _getAndroidOptions());
    List<SecureStorage> list =
        allData.entries.map((e) => SecureStorage(e.key, e.value)).toList();
    return list;
  }

  Future<void> deleteAllSecureData() async {
    await _secureStorage.deleteAll(aOptions: _getAndroidOptions());
  }
}
