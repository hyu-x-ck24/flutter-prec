import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '이 책은 플러터로 \nSNS 중고 거래 애플리케이션을 만듭니다.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/feed/1');
              },
              child: const Text('텀블러 사러 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
