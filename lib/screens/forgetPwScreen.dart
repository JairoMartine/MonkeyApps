import 'package:flutter/material.dart';

import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import './sentOTPScreen.dart';

class ForgetPwScreen extends StatelessWidget {
  static const routeName = "/restpwScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Restablecer Contraseña",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Ingrese su correo electrónico para recibir un enlace para crear una nueva contraseña por correo electrónico",
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                CustomTextInput(hintText: "Email"),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: Text("Enviar"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
