import 'package:flutter/material.dart';
import 'package:home_widget/home_widget.dart';
import 'home_widget.dart'; // O arquivo que criamos anteriormente

void main() {
  runApp(const MyApp());
  
  // Inicializa o home_widget quando o app inicia
  WidgetsFlutterBinding.ensureInitialized();
  initHomeWidget();
}

void initHomeWidget() {
  
  // Registra callback para interações com o widget
  HomeWidget.registerInteractivityCallback((uri) {
    // Aqui você pode lidar com cliques no widget
    debugPrint('Widget clicado: $uri');
    // Pode navegar para telas específicas baseado no URI
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App com Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeWidgetPage(), // Nossa página de configuração do widget
      // Se você quiser uma navegação mais completa:
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/widget-config': (context) => const HomeWidgetPage(),
      // },
    );
  }
}