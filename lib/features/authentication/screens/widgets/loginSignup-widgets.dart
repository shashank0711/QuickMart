import 'package:flutter/material.dart';

Widget LoginSignupAlert(statement, onTapFunction, text) {
  return Row(
    children: [
      Text(
        statement,
        style: TextStyle(fontFamily: 'jakarta'),
      ),
      InkWell(
        onTap: onTapFunction,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.cyan.shade300,
            fontWeight: FontWeight.bold,
            fontFamily: 'rubik',
            fontSize: 15,
          ),
        ),
      ),
    ],
  );
}


//Rich text for email password text in login signup pages
Widget AuthRichText(text) {
  return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: text,
            style: const TextStyle(
                fontFamily: 'jakarta',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const TextSpan(
            text: " *", style: TextStyle(color: Colors.red, fontSize: 15)),
      ]));
}


//text form field for name and email only
Widget nameAndEmailFormField(text){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextFormField(
      style: const TextStyle(
          fontFamily: 'jakarta',
          fontWeight: FontWeight.bold,
          fontSize: 13),
      decoration: InputDecoration(
        hintText: text,
        contentPadding: EdgeInsets.all(20),
        hintStyle: const TextStyle(fontFamily: 'jakarta', fontSize: 13),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.cyan.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black26,
          ),
        ),
      ),


    ),
  );
}



//text form field for password field
Widget passwordFormField(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 13),
    child: TextFormField(
      style: const TextStyle(
          fontFamily: 'jakarta',
          fontWeight: FontWeight.bold,
          fontSize: 13),
      decoration: InputDecoration(
        hintText: 'Enter your password',
        suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black38,size: 30,),
        contentPadding: EdgeInsets.all(20),
        hintStyle: const TextStyle(fontFamily: 'jakarta', fontSize: 13),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.cyan.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black26,
          ),
        ),
      ),


    ),
  );
}



//login sign up with google option button
Widget googleOption(Size size, text,){
  return InkWell(
    onTap: () {},
    child: Container(
      width: double.infinity,
      height: size.height * .07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'jakarta',
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/on boarding images/google.png',
              color: Colors.cyan.shade300,
              scale: 3.5,
            ),
          )
        ],
      ),
    ),
  );
}