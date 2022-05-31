import 'package:anca/src/widgets/background.dart';
import 'package:anca/src/widgets/card.dart';
import 'package:anca/src/widgets/login_button.dart';
import 'package:anca/ui/input_decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Background(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 390),
                CardContainer(
                  child: Column(
                    children: const [
                      // SizedBox(height: 10),
                      Text(
                        'Registrate',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      _LoginForm(),

                      // Button
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  'Todavia no tenes tu cuenta? Creala.',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const ButtonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'gabo4210',
                  labelText: 'Nombre de usuario',
                  prefixIcon: Icons.person),
            ),
            const SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: '*****',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
