import 'package:alquran_app/features/alquran/data/models/tafsir_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TafsirModel model;
  setUp(() {
    model = TafsirModel(
      ayat: 1,
      teks: 'teks',
    );
  });

  group('TafsirModel', () {
    test('should return a valid model', () {
      // Arrange

      // Act
      final TafsirModel tafsirModel = TafsirModel(
        ayat: 1,
        teks: 'teks',
      );
      // Assert
      expect(tafsirModel, isA<TafsirModel>());
      expect(tafsirModel.ayat, 1);
      expect(tafsirModel.teks, 'teks');
     
    });
  });

  group('TafsirModel deserialized', () {
    test('should return a JSON map containing the proper data', () {
      // Arrange

      // Act
      final jsonMap = model.toJson();
      // Assert
      expect(jsonMap, isA<Map<String, dynamic>>());
      expect(jsonMap['ayat'].runtimeType == int, true);
      expect(jsonMap['teks'].runtimeType == String, true);
      
    });
  });

  group('TafsirModel serialized', () {
    test('should return a valid model ', () {
      // Arrange

      // Act
      final TafsirModel modelFromJson = TafsirModel.fromJson(model.toJson());
      // Assert
      expect(modelFromJson, isA<TafsirModel>());
      expect(modelFromJson.ayat, 1);
      expect(modelFromJson.teks, 'teks');
      
    });
  });
}