// To parse required this JSON data, do
//
//     final revelation = revelationFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

DetailSurat detailSuratFromJson(String str) => DetailSurat.fromJson(json.decode(str));

String detailSuratToJson(DetailSurat data) => json.encode(data.toJson());

class DetailSurat {
    DetailSurat({
        required this.code,
        required this.status,
        required this.message,
        required this.data,
    });

    int code;
    String status;
    String message;
    Ayat data;

    factory DetailSurat.fromJson(Map<String, dynamic> json) => DetailSurat(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: Ayat.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class Ayat {
    Ayat({
        required this.number,
        required this.sequence,
        required this.numberOfVerses,
        required this.name,
        required this.revelation,
        required this.tafsir,
        required this.preBismillah,
        required this.verses,
    });

    int number;
    int sequence;
    int numberOfVerses;
    Name name;
    RevelationClass revelation;
    DataTafsir tafsir;
    PreBismillah preBismillah;
    List<Verse> verses;

    factory Ayat.fromJson(Map<String, dynamic> json) => Ayat(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: RevelationClass.fromJson(json["revelation"]),
        tafsir: DataTafsir.fromJson(json["tafsir"]),
        preBismillah: PreBismillah.fromJson(json["preBismillah"]),
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name.toJson(),
        "revelation": revelation.toJson(),
        "tafsir": tafsir.toJson(),
        "preBismillah": preBismillah.toJson(),
        "verses": List<dynamic>.from(verses.map((x) => x.toJson())),
    };
}

class Name {
    Name({
        required this.short,
        required this.long,
        required this.transliteration,
        required this.translation,
    });

    String short;
    String long;
    Translation transliteration;
    Translation translation;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: Translation.fromJson(json["transliteration"]),
        translation: Translation.fromJson(json["translation"]),
    );

    Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration.toJson(),
        "translation": translation.toJson(),
    };
}

class Translation {
    Translation({
        required this.en,
        required this.id,
    });

    String en;
    String id;

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
    };
}

class PreBismillah {
    PreBismillah({
        required this.text,
        required this.translation,
        required this.audio,
    });

    TextAyat text;
    Translation translation;
    Audio audio;

    factory PreBismillah.fromJson(Map<String, dynamic> json) => PreBismillah(
        text: TextAyat.fromJson(json["text"]),
        translation: Translation.fromJson(json["translation"]),
        audio: Audio.fromJson(json["audio"]),
    );

    Map<String, dynamic> toJson() => {
        "text": text.toJson(),
        "translation": translation.toJson(),
        "audio": audio.toJson(),
    };
}

class Audio {
    Audio({
        required this.primary,
        required this.secondary,
    });

    String primary;
    List<String> secondary;

    factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        primary: json["primary"],
        secondary: List<String>.from(json["secondary"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": List<dynamic>.from(secondary.map((x) => x)),
    };
}

class TextAyat {
    TextAyat({
        required this.arab,
        required this.transliteration,
    });

    String arab;
    Transliteration transliteration;

    factory TextAyat.fromJson(Map<String, dynamic> json) => TextAyat(
        arab: json["arab"],
        transliteration: Transliteration.fromJson(json["transliteration"]),
    );

    Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration.toJson(),
    };
}

class Transliteration {
    Transliteration({
        required this.en,
    });

    String en;

    factory Transliteration.fromJson(Map<String, dynamic> json) => Transliteration(
        en: json["en"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
    };
}

class RevelationClass {
    RevelationClass({
        required this.arab,
        required this.en,
        required this.id,
    });

    String arab;
    String en;
    String id;

    factory RevelationClass.fromJson(Map<String, dynamic> json) => RevelationClass(
        arab: json["arab"],
        en: json["en"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "arab": arab,
        "en": en,
        "id": id,
    };
}

class DataTafsir {
    DataTafsir({
        required this.id,
    });

    String id;

    factory DataTafsir.fromJson(Map<String, dynamic> json) => DataTafsir(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}

class Verse {
    Verse({
        required this.number,
        required this.meta,
        required this.text,
        required this.translation,
        required this.audio,
        required this.tafsir,
    });

    Number number;
    Meta meta;
    TextAyat text;
    Translation translation;
    Audio audio;
    VerseTafsir tafsir;

    factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        number: Number.fromJson(json["number"]),
        meta: Meta.fromJson(json["meta"]),
        text: TextAyat.fromJson(json["text"]),
        translation: Translation.fromJson(json["translation"]),
        audio: Audio.fromJson(json["audio"]),
        tafsir: VerseTafsir.fromJson(json["tafsir"]),
    );

    Map<String, dynamic> toJson() => {
        "number": number.toJson(),
        "meta": meta.toJson(),
        "text": text.toJson(),
        "translation": translation.toJson(),
        "audio": audio.toJson(),
        "tafsir": tafsir.toJson(),
    };
}

class Meta {
    Meta({
        required this.juz,
        required this.page,
        required this.manzil,
        required this.ruku,
        required this.hizbQuarter,
        required this.sajda,
    });

    int juz;
    int page;
    int manzil;
    int ruku;
    int hizbQuarter;
    Sajda sajda;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: Sajda.fromJson(json["sajda"]),
    );

    Map<String, dynamic> toJson() => {
        "juz": juz,
        "page": page,
        "manzil": manzil,
        "ruku": ruku,
        "hizbQuarter": hizbQuarter,
        "sajda": sajda.toJson(),
    };
}

class Sajda {
    Sajda({
        required this.recommended,
        required this.obligatory,
    });

    bool recommended;
    bool obligatory;

    factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
    );

    Map<String, dynamic> toJson() => {
        "recommended": recommended,
        "obligatory": obligatory,
    };
}

class Number {
    Number({
        required this.inQuran,
        required this.inSurah,
    });

    int inQuran;
    int inSurah;

    factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
    );

    Map<String, dynamic> toJson() => {
        "inQuran": inQuran,
        "inSurah": inSurah,
    };
}

class VerseTafsir {
    VerseTafsir({
        required this.id,
    });

    Id id;

    factory VerseTafsir.fromJson(Map<String, dynamic> json) => VerseTafsir(
        id: Id.fromJson(json["id"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
    };
}

class Id {
    Id({
        required this.short,
        required this.long,
    });

    String short;
    String long;

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        short: json["short"],
        long: json["long"],
    );

    Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
    };
}
