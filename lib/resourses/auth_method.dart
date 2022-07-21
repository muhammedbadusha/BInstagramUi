import 'dart:typed_data';

import 'package:b_instagram_ui/resourses/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore=FirebaseFirestore.instance;

  //sign up the user
Future<String> signUpUser(
  {required String username, required String email, required String password, required String bio,
    required Uint8List file,
  }
    ) async {
  String res="some error occured";
  try{
    if(username.isNotEmpty ||email.isNotEmpty||password.isNotEmpty||bio.isNotEmpty ){
      //register user
     UserCredential cred =await _auth.createUserWithEmailAndPassword(email: email, password: password);

     print(cred.user!.uid);

     String photoUrl= await StorageMethods().UploadImageToStorage("profilePics", file, false);
     //add user to database
     await _firestore.collection('users').doc(cred.user!.uid).set({
       'username':username,
       'useremail':email,
       'uid':cred.user!.uid,
       'bio':bio,
       "followers":[],
       "following":[],
     });

     res='success';
    }
  }on FirebaseAuthException catch(err){
    if(err=='invalid-email'){
      res="The email badly formatted";
    }else if(err=="weak-password"){
      res="Password should be 6 character";
    }
  }
  catch(err){
    res=err.toString();
  }
  return res;

}
}