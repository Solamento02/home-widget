import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';

class HomeWidgetPage extends StatelessWidget {
  const HomeWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurar Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _updateHomeWidget();
              },
              child: const Text('Atualizar Widget'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _updateHomeWidget() async {
    await HomeWidget.saveWidgetData<String>('title', 'Meu Widget Flutter');
    await HomeWidget.saveWidgetData<String>('message', 'Olá, Mundo!');
    await HomeWidget.updateWidget(
      androidName: 'com.example.home_widget', // Pacote do widget no Android
    );
  }
}