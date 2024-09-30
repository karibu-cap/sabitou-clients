import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sabitou_clients/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabitou Client',
      theme: FlexThemeData.light(
        useMaterial3: true,
        colors: _appFlexScheme.light,
        visualDensity: VisualDensity.standard,
        typography: Typography.material2021(
          platform: defaultTargetPlatform,
        )
      ), darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        colors: _appFlexScheme.dark,
        visualDensity: VisualDensity.standard,
        typography: Typography.material2021(
          platform: defaultTargetPlatform,
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

FlexSchemeData _appFlexScheme = FlexSchemeData(
  name: 'App Theme',
  description: 'App custom colors definition',
  light: FlexSchemeColor(
    primary: AppColors.borderColor.color,
    primaryContainer: AppColors.primaryCTAColor.color,
    secondary: AppColors.borderColor.color,
    secondaryContainer: AppColors.primaryCTAColor.color,
    tertiary: AppColors.borderColor.color,
    tertiaryContainer: AppColors.primaryCTAColor.color,
    error: AppColors.outOfStockColor.color,
  ),
  dark: FlexSchemeColor(
    primary: AppColors.borderColor.color,
    primaryContainer: AppColors.borderColor.color,
    secondary: AppColors.borderColor.color,
    secondaryContainer: AppColors.borderColor.color,
    tertiary: AppColors.borderColor.color,
    tertiaryContainer: AppColors.borderColor.color,
  )
);


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
