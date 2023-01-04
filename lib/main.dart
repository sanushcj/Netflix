import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

import 'application/downloads/downloads_bloc.dart';
import 'application/fastLaugh/fast_laugh_bloc.dart';
import 'application/hotandnew_bloc/hotandnew_bloc.dart';
import 'application/search/search_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<FastLaughBloc>(),
        ),
         BlocProvider(
          create: (ctx) => getIt<HotandnewBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Netflix',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
        home: ScreenMainPage(),
      ),
    );
  }
}
