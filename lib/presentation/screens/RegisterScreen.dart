import 'package:doctorapp/presentation/screens/DoctorScreen.dart';
import 'package:doctorapp/presentation/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:doctorapp/pallete.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;
  bool rememberMe = false; // Initialize rememberMe with a default value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
             flex: 1,
             child: Center(
             child: Container(
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/doctor.png"),
                fit: BoxFit.cover,
              ),
             ),
             ),
            ),
           ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Text(
                      "SAPDOCS",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 55,
                        color: Pallete.main,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 90),
                    Text(
                      'Register',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Pallete.main,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Enter new account’s details',
                      style: TextStyle(
                        color: Pallete.lighttext,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        //controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Pallete.main),
                          ),
                          prefixIcon: Icon(Icons.email, color: Pallete.main),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        //controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Pallete.main),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Pallete.main),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        //controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Pallete.main),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Pallete.main),
                        ),
                      ),
                    ),
                   
                    SizedBox(height: 60),
                    SizedBox(
                      width: 350,
                      height: 55,
                      child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorScreen()));
                      },
                      child: const Text('SIGN UP', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.white,
                                        ),),
                                       style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                                        ),
                                         fixedSize: const Size(300, 40),
                                        backgroundColor: Pallete.main,
                        
                                       ),
                                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Already on Sapdos?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Pallete.main,
                                  fontWeight: FontWeight.w400,
                                  // Add any additional styles you want
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                            },
                            child: Text(
                              'Sign-In',
                              style: TextStyle(
                                fontSize: 16,
                                color: Pallete.main,
                                decoration: TextDecoration.underline,
                                decorationColor: Pallete.main,
                                // Add any additional styles you want
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
      );
    
  }
}
