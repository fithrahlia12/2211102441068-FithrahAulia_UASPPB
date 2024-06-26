import 'package:super_store_e_commerce_flutter/imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isHoveringLogin = false;
  bool _isHoveringSignUp = false;

  @override
  Widget build(BuildContext context) {
    // total height and width of screen
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppNameWidget(),
              const SizedBox(height: 100),
              const CustomTextField(
                labelText: 'Email',
                hintText: 'example@example.com',
                prefixIcon: Icons.email,
              ),
              const SizedBox(height: 20.0),
              const CustomTextField(
                labelText: 'Password',
                hintText: 'Password',
                prefixIcon: Icons.lock,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: const TextBuilder(
                    text: 'Forgot Password',
                    fontSize: 16,
                    color: Color.fromRGBO(48, 72, 42, 1),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Center(
                child: MouseRegion(
                  onEnter: (_) => setState(() => _isHoveringLogin = true),
                  onExit: (_) => setState(() => _isHoveringLogin = false),
                  child: MaterialButton(
                    height: 60,
                    color: _isHoveringLogin
                        ? Colors.grey[800]
                        : Color.fromRGBO(48, 72, 42, 1),
                    minWidth: size.width * 0.8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide.none,
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const Home()),
                        (route) => false,
                      );
                    },
                    child: const TextBuilder(
                      text: 'Login',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextBuilder(
                    text: "Don't have an account? ",
                    color: Color.fromARGB(255, 165, 135, 179),
                  ),
                  MouseRegion(
                    onEnter: (_) => setState(() => _isHoveringSignUp = true),
                    onExit: (_) => setState(() => _isHoveringSignUp = false),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const Register()),
                        );
                      },
                      onTapDown: (_) {
                        setState(() {
                          _isHoveringSignUp = true;
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          _isHoveringSignUp = false;
                        });
                      },
                      onTapUp: (_) {
                        setState(() {
                          _isHoveringSignUp = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _isHoveringSignUp
                              ? Colors.grey[300]
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: _isHoveringSignUp
                              ? [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ]
                              : [],
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: const TextBuilder(
                          text: 'Sign Up',
                          color: Color.fromRGBO(48, 72, 42, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
