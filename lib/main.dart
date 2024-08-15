import 'package:flutter/material.dart';

import 'Assets.dart';
//import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const CippaLeadding(),
        title: const CippaAppBarTitle(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.waterBackground),
            fit: BoxFit.cover,
          ),
        ),
        child:const Center(
          child: Text(''),
        ),
      )
    );
  }
}

class CippaAppBarTitle extends StatelessWidget {
  static const String _waterAppBarText = "СЛОВА ОТ СЛОВА “ВОДА”";
  static const String _waterAppBarFont = "Nunito";
  const CippaAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      _waterAppBarText,
      style: TextStyle(
        fontFamily: _waterAppBarFont,
        fontSize: 32,
        color: Color.fromRGBO(51, 186, 252, 1)
      ),
    );
  }
}

class CippaLeadding extends StatelessWidget {
  const CippaLeadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child:Image.asset(Assets.cippaLogo)
    );
  }
}



