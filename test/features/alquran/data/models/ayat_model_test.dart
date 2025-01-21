
import 'package:alquran_app/features/alquran/data/models/ayat_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AyatModel model;
  setUp(() {
    model = AyatModel(
      nomorAyat: 1,
      teksArab: 'arab',
      teksIndonesia: 'latin',
      teksLatin: 'terjemahan',
    );
  });

  group('AyatModel', () {
    test('should return a valid model', () {
      // Arrange

      // Act
      final AyatModel ayatModel = AyatModel(
        nomorAyat: 1,
        teksArab: 'arab',
        teksIndonesia: 'latin',
        teksLatin: 'terjemahan',
      );
      // Assert
      expect(ayatModel, isA<AyatModel>());
      expect(ayatModel.nomorAyat, 1);
      expect(ayatModel.teksArab, 'arab');
      expect(ayatModel.teksIndonesia, 'latin');
      expect(ayatModel.teksLatin, 'terjemahan');
    });
  });

  group('AyatModel deserialized', () {
    test('should return a JSON map containing the proper data', () {
      // Arrange

      // Act
      final jsonMap = model.toJson();
      // Assert
      expect(jsonMap, isA<Map<String, dynamic>>());
      expect(jsonMap['nomorAyat'].runtimeType == int, true);
      expect(jsonMap['teksArab'].runtimeType == String, true);
      expect(jsonMap['teksIndonesia'].runtimeType == String, true);
      expect(jsonMap['teksLatin'].runtimeType == String, true);
    });
  });

  group('AyatModel serialized', () {
    test('should return a valid model ', () {
      // Arrange

      // Act
      final AyatModel modelFromJson = AyatModel.fromJson(model.toJson());
      // Assert
      expect(modelFromJson, isA<AyatModel>());
      expect(modelFromJson.nomorAyat, 1);
      expect(modelFromJson.teksArab, 'arab');
      expect(modelFromJson.teksIndonesia, 'latin');
      expect(modelFromJson.teksLatin, 'terjemahan');
    });
  });
}
