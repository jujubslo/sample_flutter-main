import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Desenvolvido por CETEC',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Email: info@ucs.br'),
            Text('Website: www.ucs.br'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () async {
                    await launchUrl(
                        'https://www.facebook.com/ederson.pedro' as Uri);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.south_america),
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://twitter.com/edertec'));
                  },
                ),
                // Mais ícones aqui
              ],
            ),
          ],
        ),
      ),
    );
  }
}
