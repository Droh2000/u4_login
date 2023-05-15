// mateapp + tab para crear el main automatico
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:u4_login/providers/login_provider.dart';
import 'package:u4_login/screens/home_screen.dart';
import 'package:u4_login/screens/login_screen.dart';
import 'package:u4_login/screens/registrer_sceen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configurar para que maneje el Provider Con 'Multi' es para si queremos agregar muchos providders
    // En el main podemos mandar a llamar el provider desde cualquier clase
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
      // EL ' MaterialApp' es el contenedor de toda la aplicacion (Contiene todo los Scafold)
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        routes: {
          //Le podemos poner un nombre cualquiera a la instancia de la pantalla
          'login': (_) => const LoginScreen(),
          'home': (_) => const HomeScreen(),
          'registrer': (_) => RegistrerScreen(),
        },
        // Para que el main llame al LoginScreen
        initialRoute: 'login',
      ),
    );
  }
}
