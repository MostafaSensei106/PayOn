import 'dart:async';
import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OcrService {
  final TextRecognizer _textRecognizer = TextRecognizer();

  Future<String> extractText(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);
    final recognizedText = await _textRecognizer.processImage(inputImage);

    return recognizedText.text;
  }

  @disposeMethod
  void dispose() {
    unawaited(_textRecognizer.close());
  }
}
