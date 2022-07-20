import 'package:b_instagram_ui/utils/colors.dart';
import 'package:b_instagram_ui/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(),
            flex: 2,
          ),
          //svg image
          SvgPicture.asset(
            'assets/instagram/ic_instagram.svg',
            color: primaryColor,
            height: mHeight * .07,
          ),
          SizedBox(
            height: mHeight * .07,
          ),
          //circular widget to accept and show out selected file
          Stack(
            children: [
              CircleAvatar(
                radius: mWidth * .14,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHN0eWxlJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              ),
          Positioned(
            right: mWidth * .01,
            bottom: mWidth * .01,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: mWidth*.03,
                backgroundColor: Colors.grey[300],
                child:  Icon(
                  Icons.add_a_photo,
                  size: mWidth*.04,
                  color:Colors.black ,
                ),
              ),
            ))
            ],
          ),
          SizedBox(
            height: mHeight * .03,
          ),
          //text input field username
          TextFieldInput(
              textEditingController: _usernameController,
              hintText: "Enter your username",
              textInputType: TextInputType.text),
          SizedBox(
            height: mHeight * .03,
          ),
          //text field email
          TextFieldInput(
              textEditingController: _emailController,
              hintText: "Enter your email",
              textInputType: TextInputType.emailAddress),
          SizedBox(
            height: mHeight * .03,
          ),
          //text field password
          TextFieldInput(
            textEditingController: _passwordController,
            hintText: "Enter your password",
            textInputType: TextInputType.text,
            isPass: true,
          ),
          SizedBox(
            height: mHeight * .03,
          ),
          //text input field bio
          TextFieldInput(
              textEditingController: _bioController,
              hintText: "Enter your bio",
              textInputType: TextInputType.text),
          SizedBox(
            height: mHeight * .03,
          ),
          //button login
          InkWell(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
              child: Text('Login'),
            ),
          ),
          SizedBox(
            height: mHeight * .02,
          ),
          Flexible(
            child: Container(),
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Don't have an account?"),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  child: Text(
                    "Sing up.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
              )
            ],
          ),

          //transitioning to signup
        ],
      ),
    )));
  }
}
