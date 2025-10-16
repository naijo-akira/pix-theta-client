import 'package:flutter/material.dart';

class ConnectivityPage extends StatelessWidget {
  const ConnectivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wifi_tethering, size: 80, color: Colors.blueGrey),
            const SizedBox(height: 24),
            const Text(
              'RICOH THETAとの疎通確認',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            FilledButton.icon(
              onPressed: () {
                // ここに疎通確認処理を後で追加
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('疎通確認ボタンが押されました')));
              },
              icon: const Icon(Icons.wifi),
              label: const Text('疎通確認を実行'),
            ),
          ],
        ),
      ),
    );
  }
}
