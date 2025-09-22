import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/CustomButton.dart';
import 'package:eazy_app/core/widgets/textField.dart';
import 'package:eazy_app/features/splash&onboarding/widgets/text_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../splash&onboarding/background.dart';
import 'Otp_screen.dart';
import 'login_screen.dart';

class SignUpState {
  final bool obscurePassword;
  final bool obscureConfirmPassword;
  final bool isChecked;

  SignUpState({
    required this.obscurePassword,
    required this.obscureConfirmPassword,
    required this.isChecked,
  });

  SignUpState copyWith({
    bool? obscurePassword,
    bool? obscureConfirmPassword,
    bool? isChecked,
  }) {
    return SignUpState(
      obscurePassword: obscurePassword ?? this.obscurePassword,
      obscureConfirmPassword:
      obscureConfirmPassword ?? this.obscureConfirmPassword,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit()
      : super(SignUpState(
    obscurePassword: true,
    obscureConfirmPassword: true,
    isChecked: false,
  ));

  void togglePassword() {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void toggleConfirmPassword() {
    emit(state.copyWith(obscureConfirmPassword: !state.obscureConfirmPassword));
  }

  void toggleCheckbox(bool value) {
    emit(state.copyWith(isChecked: value));
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool _validateEmailOrPhone(String value) {
    final emailRegex =
    RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final phoneRegex = RegExp(r"^(\+?\d{10,15})$");
    return emailRegex.hasMatch(value) || phoneRegex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393.6696472167969, 852),
      builder: (context, child) {
        return BlocProvider(
          create: (_) => SignUpCubit(),
          child: Scaffold(
            body: Stack(
              children: [
                 SplashBackgroundWidget(),
                Padding(
                  padding: AppPaddings.mainPadding,
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 50.h),
                          TextSplash(),
                          SizedBox(height: 60.h),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'تسجيل حساب جديد',
                              textAlign: TextAlign.end,
                              style: AppStyles.textStyle18w700
                                  .copyWith(color: AppColors.white),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          CustomTextField(
                            hintText: 'اسم المستخدم',
                            controller: nameController,
                            backgroundColor: AppColors.white,
                            /*validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'ادخل اسم المستخدم';
                              }
                              if (value.length < 3) {
                                return 'اسم المستخدم يجب أن يكون 3 أحرف على الأقل';
                              }
                              return null;
                            },*/
                          ),
                          SizedBox(height: 16.h),
                          CustomTextField(
                            hintText: 'رقم الهاتف / البريد الإلكتروني',
                            controller: emailController,
                            backgroundColor: AppColors.white,
                            /*validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'ادخل البريد الإلكتروني أو الهاتف';
                              }
                              if (!_validateEmailOrPhone(value)) {
                                return 'ادخل بريد إلكتروني أو رقم هاتف صحيح';
                              }
                              return null;
                            },*/
                          ),
                          SizedBox(height: 16.h),
                          BlocBuilder<SignUpCubit, SignUpState>(
                            builder: (context, state) {
                              return CustomTextField(
                                hintText: 'كلمة المرور',
                                controller: passwordController,
                                obscureText: state.obscurePassword,
                                iconPath: state.obscurePassword
                                    ? "assets/icons/eyeOff.svg"
                                    : "assets/icons/EyeOn.svg",
                                iconColor: const Color(0xffC9CECF),
                                onIconTap: () {
                                  context.read<SignUpCubit>().togglePassword();
                                },
                                backgroundColor: AppColors.white,
                                /*validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'ادخل كلمة المرور';
                                  }
                                  if (value.length < 6) {
                                    return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
                                  }
                                  return null;
                                },*/
                              );
                            },
                          ),
                          SizedBox(height: 16.h),
                          BlocBuilder<SignUpCubit, SignUpState>(
                            builder: (context, state) {
                              return CustomTextField(
                                hintText: 'أعد ادخال كلمة المرور',
                                controller: confirmPasswordController,
                                obscureText: state.obscureConfirmPassword,
                                iconPath: state.obscureConfirmPassword
                                    ? "assets/icons/eyeOff.svg"
                                    : "assets/icons/EyeOn.svg",
                                iconColor: const Color(0xffC9CECF),
                                onIconTap: () {
                                  context
                                      .read<SignUpCubit>()
                                      .toggleConfirmPassword();
                                },
                                backgroundColor: AppColors.white,
                                /*validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'أدخل تأكيد كلمة المرور';
                                  }
                                  if (value != passwordController.text) {
                                    return 'كلمات المرور غير متطابقة';
                                  }
                                  return null;
                                },*/
                              );
                            },
                          ),
                          SizedBox(height: 5.h),
                          BlocBuilder<SignUpCubit, SignUpState>(
                            builder: (context, state) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "أوافق على الشروط والأحكام للاستمرار",
                                    style: AppStyles.textStyle12w400LS
                                        .copyWith(color: AppColors.gray),
                                    textAlign: TextAlign.right,
                                  ),
                                  Checkbox(
                                    value: state.isChecked,
                                    onChanged: (value) {
                                      context
                                          .read<SignUpCubit>()
                                          .toggleCheckbox(value ?? false);
                                    },
                                    activeColor: AppColors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(5.r),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(height: 41.h),
                          BlocBuilder<SignUpCubit, SignUpState>(
                            builder: (context, state) {
                              return CustomButton(
                                text: 'إنشاء حساب',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    MyNavigator.goTo(
                                      context,
                                     LoginScreen(),
                                      type: NavigatorType.pushReplacement,
                                    );
                                  }
                                },
                                color: state.isChecked
                                    ? AppColors.blue
                                    : AppColors.gray,
                                textStyle: AppStyles.textStyle14w700FF
                                    .copyWith(color: AppColors.white),
                              );
                            },
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () {
                              MyNavigator.goTo(
                                context,
                                const LoginScreen(),
                                type: NavigatorType.pushReplacement,
                              );
                            },
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'لديك حساب بالفعل؟  ',
                                      style: AppStyles.textStyle14w400FF
                                          .copyWith(color: AppColors.gray2),
                                    ),
                                    TextSpan(
                                      text: 'تسجيل الدخول',
                                      style: AppStyles.textStyle14w400FF
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
