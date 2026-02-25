import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Loja de Hábitos 2026'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: screenWidth > 600 ? 400 : screenWidth * 0.9,
              child: Card(
                elevation: 5,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        height: screenHeight * 0.25,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tênis Fila",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "R\$ 29,90",
                            style: TextStyle(fontSize: 18, color: Colors.green[800], fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: const Text("COMPRAR"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}