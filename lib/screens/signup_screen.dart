import 'dart:typed_data';

import 'package:b_instagram_ui/resourses/auth_method.dart';
import 'package:b_instagram_ui/utils/colors.dart';
import 'package:b_instagram_ui/utils/utils.dart';
import 'package:b_instagram_ui/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

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
   Uint8List? _image;
   bool isLoading=false;
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }
 void selectImage()async{
 Uint8List im= await pickImage(ImageSource.gallery);
 setState(() {
   _image=im;
 });
  }
void signUpUser()async{
    setState(() {
      isLoading=true;
    });
  String res=await  AuthMethods().signUpUser(
    username: _usernameController.text,
    email: _emailController.text,
    password: _passwordController.text,
    bio: _bioController.text,
    file:_image!,
  );
    setState(() {
      isLoading=false;
    });
  if(res == "success"){
    showSnakBar(res,context);
  }
}
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(

      padding: EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: ListView(

      // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mHeight * .07,
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
          Center(
            child: Stack(
              children: [
                _image!=null?
            CircleAvatar(
            radius: mWidth * .14,
              backgroundImage: MemoryImage(_image!),
            )
               : CircleAvatar(
                  radius: mWidth * .14,
                  backgroundImage: NetworkImage('https://i.pinimg.com/474x/d4/37/4b/d4374b6dc2934880eaa7a5e8989c1f64.jpg'),
                ),
            Positioned(
              right: mWidth * .01,
              bottom: mHeight * .01,

              child: InkWell(
                onTap: (){selectImage();},
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
                ),
              ))
              ],
            ),
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
            onTap: (){
              signUpUser();
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)))),
              child: isLoading?Center(child:CircularProgressIndicator(color: primaryColor,),): Text('Sign Up'),
            ),
          ),
          SizedBox(
            height: mHeight * .02,
          ),
          // Flexible(
          //   child: Container(),
          //   flex: 2,
          // ),
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
                  child:Text(
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
