import 'package:flutter/material.dart';
import 'package:flutter_application_3/router/router.dart';
import 'package:flutter_application_3/ui/buttons/custom_outlined_button.dart';
import 'package:flutter_application_3/ui/buttons/link_text.dart';
import 'package:flutter_application_3/ui/inputs/custom_inputs.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      padding: EdgeInsets.symmetric(horizontal: 20),

      child: Center(
        //Permite que al expandir no se desborde cuando cambie de dispositivo.
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
            child: Column(
              children: [
                //email
                TextFormField(
                  // validator: ,
                  style: TextStyle(color: Colors.white),
                  decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_outlined,
                  ),
                ),

                SizedBox(height: 20),
                //password
                TextFormField(
                  // validator: ,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: CustomInputs.loginInputDecoration(
                    hint: '*******',
                    label: 'Contraseña',
                    icon: Icons.lock_clock_rounded,
                  ),
                ),
                SizedBox(height: 20),
                CustomOutlinedButton(onPressed: () {}, text: 'Ingresar'),

                LinkText(
                  text: 'Nueva Cuenta',
                  onPressed: () {
                    Navigator.pushNamed(context, Flurorouter.registerRouter);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
