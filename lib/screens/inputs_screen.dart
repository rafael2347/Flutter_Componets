import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre':     'Anselmo',
      'apellidos':  'Godofredo Orador',
      'email':      'anselmo123@gmail.com',
      'password':   '123456',
      'rol':        'usuario'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormkey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre',
                helperText: 'Introduce solo texto',
                icon: Icons.assignment_ind_outlined,
                suffixIcon: Icons.group_outlined, 
                formProperty: 'nombre', 
                formValues: formValues,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos',
                icon: Icons.supervised_user_circle_outlined,
                formProperty: 'apellidos', 
                formValues: formValues,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'ejemplo@gmail.com',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email', 
                formValues: formValues,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Contraseña',
                helperText: 'Mínimo 8 caracateres con una mayús',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_outlined,
                obscureText: true,
                formProperty: 'password', 
                formValues: formValues,
              ),
              SizedBox(height: 30),
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(child: Text('Usuario'), value: 'usuario',),
                  DropdownMenuItem(child: Text('Editor'), value: 'editor',),
                  DropdownMenuItem(child: Text('Administrador'), value: 'administrador',),
                ], 
                onChanged: (value){
                  formValues['rol'] = value ?? 'usuario';
                }),
              SizedBox(height: 30),
              ElevatedButton(
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                ),
                onPressed: () {

                  FocusScope.of(context).requestFocus(FocusNode());

                  if(!myFormkey.currentState!.validate()){
                    print('El formulario contiene errores');
                    return;
                  }
                  print(formValues);
                },
              )
        
        
          ],),
        )
      ),
    );
  }
}

