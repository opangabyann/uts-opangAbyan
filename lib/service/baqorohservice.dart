import 'package:flutter/services.dart';
import 'package:uts_1/models/dataBaqoroh.dart';


class BaqorohService {
  getData() async {
    //proses membaca json menjadi string
    final String response =
        await rootBundle.loadString('assets/json/baqoroh.json');

    // merubah string menjadi variable dataFoods
    DetailSurat data = detailSuratFromJson(response);

    //mengirim data list food yang spesifik
    // print(data.data.runtimeType);
    return data.data.verses;
  }
}
//