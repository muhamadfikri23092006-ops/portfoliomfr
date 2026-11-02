import 'package:flutter_test/flutter_test.dart';
import 'package:_202410715230_muhamad_fikri_ramadhan/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    // Jalankan aplikasi portofolio kamu
    await tester.pumpWidget(const PortfolioApp());

    // Memastikan nama depan kamu muncul di layar
    expect(find.text('Muhamad Fikri'), findsWidgets);
  });
}