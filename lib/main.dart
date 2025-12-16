import 'app/exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDependencies.init();

  runApp(const ScubeTaskApp());
}
