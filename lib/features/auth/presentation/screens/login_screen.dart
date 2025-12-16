import '/app/exports.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: _loginScreenBody(),
    );
  }

  Widget _loginScreenBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60.h),
              _logo(),
              SizedBox(height: 15.h),
              _titleText(),
              _subTitleText(),
              SizedBox(height: 60.h),
              _whiteContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _whiteContainer() {
    return Container(
      width: double.infinity,
      height: 400.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _loginText(),
          SizedBox(height: 10.h),
          _usernameTextFormField(),
          SizedBox(height: 10.h),
          _passwordTextFormField(),
          SizedBox(height: 10.h),
          _forgotPasswordTextButton(),
          SizedBox(height: 10.h),
          _loginButton(),
          SizedBox(height: 10.h),
          _registerNowTextButton(),
        ],
      ),
    );
  }

  Widget _registerNowTextButton() {
    return CustomTwoRichText(
      firstText: 'Don’t have any account? ',
      secondText: 'Register Now',
      firstTextColor: AppColors.primaryText,
      secondTextColor: AppColors.primary,
      firstTextSize: 12.sp,
      secondTextSize: 12.sp,
      firstTextFontWeight: FontWeight.w500,
      secondTextFontWeight: FontWeight.w500,
      onTap: () {},
    );
  }

  Widget _loginButton() {
    return CustomButton(
      text: 'Login',
      onTap: () {
        AppRoutes.removePreviousPageAndGo(context, ScmScreen.routeName);
      },
      buttonColor: AppColors.primary,
      borderRadius: 10.r,
    );
  }

  Widget _forgotPasswordTextButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Widget _passwordTextFormField() {
    return Consumer<LoginScreenProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          textEditingController: provider.passwordController,
          textInputType: TextInputType.text,
          hintText: 'Password',
          showSuffixIcon: true,
          suffixIconPasswordType: true,
          obscureText: true,
        );
      },
    );
  }

  Widget _usernameTextFormField() {
    return Consumer<LoginScreenProvider>(
      builder: (context, provider, child) {
        return CustomTextFormField(
          textEditingController: provider.usernameController,
          textInputType: TextInputType.emailAddress,
          hintText: 'Username',
        );
      },
    );
  }

  Widget _loginText() {
    return Text(
      'Login',
      style: TextStyle(
        color: AppColors.primaryText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _subTitleText() {
    return Text(
      'Control & Monitoring System',
      style: TextStyle(
        color: AppColors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Widget _titleText() {
    return Text(
      'SCUBE',
      style: TextStyle(
        color: AppColors.white,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _logo() {
    return Image.asset(
      AssetsPath.logo,
      width: 100.w,
      height: 100.h,
      fit: BoxFit.fitWidth,
    );
  }
}
