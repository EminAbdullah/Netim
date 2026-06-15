import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:netim/routes.dart';
import 'package:netim/stores/definition_store.dart';
import 'package:netim/styles/theme.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size.shortestSide < 600
          ? Size(360, 690) // mobil
          : Size(768, 1024), // tablet
      //fontSizeResolver: FontSizeResolvers.height, //radius olabilir
      minTextAdapt: true,
      builder: (ctx, child) {
        return MultiProvider(
          providers: [Provider<DefinitionStore>(create: (_) => DefinitionStore())],
          child: Consumer<DefinitionStore>(
            builder: (_, definitionStore, __) => Observer(
              builder: (_) {
                return MaterialApp(
                  // This is the theme of your application.
                  //
                  // TRY THIS: Try running your application with "flutter run". You'll see
                  // the application has a purple toolbar. Then, without quitting the app,
                  // try changing the seedColor in the colorScheme below to Colors.green
                  // and then invoke "hot reload" (save your changes or press the "hot
                  // reload" button in a Flutter-supported IDE, or press "r" if you used
                  // the command line to start the app).
                  //
                  // Notice that the counter didn't reset back to zero; the application
                  // state is not lost during the reload. To reset the state, use hot
                  // restart instead.
                  //
                  // This works for code too, not just values: Most code changes can be
                  // tested with just a hot reload.
                  theme: CustomTheme().lightTheme,
                  darkTheme: CustomTheme().darkTheme,
                  themeMode: definitionStore.themeMode,
                  onGenerateRoute: Routes.materialPageRoute,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
