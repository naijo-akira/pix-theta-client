import 'package:flutter/material.dart';

class ShootingPage extends StatelessWidget {
  const ShootingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 24),
            const Text(
              'THETAで撮影',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            FilledButton.icon(
              onPressed: () {
                // ここに撮影処理を後で追加
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('撮影ボタンが押されました')));
              },
              icon: const Icon(Icons.camera),
              label: const Text('撮影する'),
            ),
          ],
        ),
      ),
    );
  }
}
