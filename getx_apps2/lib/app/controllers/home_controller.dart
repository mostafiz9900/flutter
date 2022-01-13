import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class HomeController extends GetxController {

  final box = GetStorage();
  bool get isDark => box.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => box.write('darkmode', val);
  final count = 0.obs;
  static final int _initialPage = 2;
  int actualPageNumber = _initialPage, allPagesCount = 0;
  bool isSampleDoc = true;
  PdfController pdfController;
  @override
  void onInit() {
    pdfController = PdfController(
      document: PdfDocument.openAsset('assets/images/book.pdf'),
      initialPage: _initialPage,
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


}
