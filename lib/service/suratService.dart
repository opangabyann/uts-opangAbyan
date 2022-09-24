import 'package:flutter/services.dart';
import 'package:uts_1/models/datasurat.dart';


class SuratService {
  getData() async {
    //proses membaca json menjadi string
    final String response =
        await rootBundle.loadString('assets/json/surat.json');

    // merubah string menjadi variable dataFoods
    AlQuran data = alQuranFromJson(response);

    //mengirim data list food yang spesifik
    print(data.data.runtimeType);
    return data.data;
  }
}
//