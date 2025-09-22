import 'package:eazy_app/core/helper/my_navgator.dart';
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appPaddings.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customButtom.dart';
import 'package:eazy_app/core/widgets/textField.dart';
import 'package:eazy_app/features/Joining_flow/sign_up_screen.dart';
import 'package:eazy_app/features/home/views/home_view.dart';
import 'package:eazy_app/features/splash&onboarding/widgets/text_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../splash&onboarding/background.dart';
import 'forget_password.dart';

class LoginState {
  final bool obscurePassword;
  LoginState({required this.obscurePassword});
}

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState(obscurePassword: true));

  void togglePassword() {
    emit(LoginState(obscurePassword: !state.obscurePassword));
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool validateEmailOrPhone(String value) {
    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final phoneRegex = RegExp(r"^(\+?\d{10,15})$");
    return emailRegex.hasMatch(value) || phoneRegex.hasMatch(value);
  }

  bool validatePassword(String value) {
    return value.length >= 6;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) {
        return BlocProvider(
          create: (_) => LoginCubit(),
          child: Scaffold(
            body: Stack(
              children: [
                 SplashBackgroundWidget(),
                Padding(
                  padding: AppPaddings.mainPadding,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 90.h,),
                          Center(child: TextSplash()),
                          SizedBox(height: 90.h),
                          Text(
                            'تسجيل دخول',
                            style: AppStyles.textStyle18w700.copyWith(color: AppColors.white),
                          ),
                          SizedBox(height: 15.h),
                          CustomTextField(
                            hintText: 'رقم الهاتف / البريد الإلكتروني',
                            controller: emailController,
                            backgroundColor: AppColors.white,
                            /*validator: (value) {
                              if (value == null || value.isEmpty) return 'هذا الحقل مطلوب';
                              if (!validateEmailOrPhone(value)) return 'أدخل بريد إلكتروني أو رقم هاتف صحيح';
                              return null;
                            },*/
                          ),
                          SizedBox(height: 16.h),
                          BlocBuilder<LoginCubit, LoginState>(
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
                                  context.read<LoginCubit>().togglePassword();
                                },
                               /* validator: (value) {
                                  if (value == null || value.isEmpty) return 'Password cannot be empty';
                                  if (value.length < 6) return 'Password must be at least 6 characters';
                                  return null;
                                },*/
                              );
                            },
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              SizedBox(width: 27.w),
                              GestureDetector(
                                onTap: () {
                                  MyNavigator.goTo(
                                    context,
                                    const ForgetPassword(),
                                    type: NavigatorType.push,
                                  );
                                },
                                child: Text(
                                  'نسيت كلمة المرور؟',
                                  style: AppStyles.textStyle14w700FF.copyWith(color: AppColors.gray),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 109.h),
                          CustomBtn(
                            width: double.infinity,
                            height: 48.h,
                            text: 'تسجيل دخول',
                            onPressed: () {
                              MyNavigator.goTo(context, const HomeView(),
                                  type: NavigatorType.pushReplacement);
                            },
                          ),

                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () {
                              MyNavigator.goTo(
                                context,
                                const SignUpScreen(),
                                type: NavigatorType.push,
                              );
                            },
                            child: Center(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'ليس لديك حساب؟ ',
                                      style: AppStyles.textStyle14w400FF.copyWith(
                                        color: AppColors.gray2,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'سجل الآن',
                                      style: AppStyles.textStyle14w400FF.copyWith(
                                        color: AppColors.white,
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
