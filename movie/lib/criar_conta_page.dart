import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/home_page.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({super.key});

  @override
  State<CriarConta> createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  @override
  Widget build(BuildContext context) {
    var _containerSize = MediaQuery.of(context).size.height * 0.05;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff28282c),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: _containerSize,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Text(
                'Crie a sua conta',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xffFFFFFF)),
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      hintText: 'Digite seu email',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Senha',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Digite sua senha',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Confirmar Senha',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Confirmar senha',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 53),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: _containerSize * 0.7,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Text(
                        'Criar Conta',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff64C661),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
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
}