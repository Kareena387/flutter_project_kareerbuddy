import 'package:get_storage/get_storage.dart';
import 'package:kareerbuddy/constants/storage_key.dart';

class StorageController {
  final box = GetStorage();
  bool isFirstTime() => box.read(StorageKeys.firstTime) ?? true;
  void setFirstTime(bool value) => box.write(StorageKeys.firstTime, value);
}