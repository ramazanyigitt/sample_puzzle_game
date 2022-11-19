import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection_container.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  generateForDir: [
    'lib',
  ], // <-- Generate for these directories içinde parametere var başka pluginlerden işe yaramaz.
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  $initGetIt(
    locator,
  );
}
