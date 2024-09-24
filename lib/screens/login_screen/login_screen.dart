import 'package:clean_arc_http_ecom_app/cubit/logIn/log_in_cubit.dart';
import 'package:clean_arc_http_ecom_app/helper/color_helper.dart';
import 'package:clean_arc_http_ecom_app/helper/dimention_helper.dart';
import 'package:clean_arc_http_ecom_app/helper/font_helper.dart';
import 'package:clean_arc_http_ecom_app/helper/string_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHelper.primaryColor,
        title: const Text(
          StringHelper.logIn,
          style: TextStyle(
            color: ColorHelper.whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DimensHelper.dimens_20),
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration:
                  const InputDecoration(hintText: StringHelper.enterEmail),
            ),
            const SizedBox(
              height: DimensHelper.dimens_20,
            ),
            TextFormField(
              controller: password,
              decoration:
                  const InputDecoration(hintText: StringHelper.enterPassword),
            ),
            const SizedBox(
              height: DimensHelper.dimens_20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: BlocProvider(
                create: (context) => LogInCubit(),
                child: BlocBuilder<LogInCubit, LogInState>(
                  builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorHelper.primaryColor),
                        onPressed: () {
                          context.read<LogInCubit>().logIn(
                              email: email.text,
                              password: password.text,
                              context: context);
                        },
                        child: state is LogInLoading
                            ? const CircularProgressIndicator(
                                color: ColorHelper.whiteColor,
                              )
                            : const Text(
                                StringHelper.logIn,
                                style: TextStyle(
                                    color: ColorHelper.whiteColor,
                                    fontSize: FontHelper.font_18),
                              ));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
