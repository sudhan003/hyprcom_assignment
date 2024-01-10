import 'package:hyprcom_assignment/all_imports.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackButton(
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: SizeUtils.screenSize(context).height * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'First name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'Last Name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextField(
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    text: "Continue",
                    onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Forgot Password ? Reset",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: AppColors.textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
