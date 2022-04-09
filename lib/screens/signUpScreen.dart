import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Registro de Usuario",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text(
                "Agrega tus datos para registrarte",
              ),
              Spacer(),
              CustomTextInput(hintText: "Nombre Completo"),
              Spacer(),
              CustomTextInput(hintText: "Email"),
              Spacer(),
              CustomTextInput(hintText: "Teléfono Celular"),
              Spacer(),
              CustomTextInput(hintText: "Dirección"),
              Spacer(),
              CustomTextInput(hintText: "Contraseña"),
              Spacer(),
              CustomTextInput(hintText: "Confirmar Contraseña"),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Crear Registro"),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("¿Ya tienes una cuenta?"),
                    Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
