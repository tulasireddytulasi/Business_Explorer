import 'package:business_explorer/app/view/details/details_page.dart';
import 'package:business_explorer/app/view/home/bloc/home_bloc.dart';
import 'package:business_explorer/app/view/home/home_page.dart';
import 'package:business_explorer/simple_bloc_observer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const BusinessExplorer());
}

class BusinessExplorer extends StatelessWidget {
  const BusinessExplorer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        title: 'Business Explorer',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const HomePage(),
          '/cart': (_) => const DetailsPage(),
        },
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  /// Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}