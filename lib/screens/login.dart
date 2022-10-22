import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            begin: Alignment(0,-2),
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 50, 200, 130),
              Color.fromARGB(255, 232, 242, 238),
              
            
          ])
          
        ),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SingleChildScrollView(
              child: Column(
                children:  [
                  const Image(
                    image: AssetImage('assets/RJ_Logo.png'),
                    alignment: Alignment.topCenter,
                    width: 200,
                    height: 200,
                    
                  ),
                  const SizedBox(height: 20,),
                  const Text('¡Unete y compartamos juntos!', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 122, 130, 126), fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15,),
                  Material(
                    elevation: 8,
                    child: Container(
                      width: 325,
                      height: 470,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30,),
                          const Text("Bienvenido",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight:FontWeight.bold
                            ),),
                          const SizedBox(height: 10,),
                          const Text("Porfavor, ingresa tu usuario y contraseña",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),),
                          const SizedBox(height: 30,),
                          Container(
                            
                            width: 260,
                            height: 60,
                            child: const TextField(
                              decoration: InputDecoration(
                                  suffix: Icon(Icons.mail_outline,color: Color.fromARGB(255, 50, 200, 130),),
                                  labelText: "Correo electronico",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  )
                              ),
                            ),
                          ),
                          const SizedBox(height: 12,),
                          Container(
                            width: 260,
                            height: 60,
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffix: Icon(Icons.remove_red_eye_outlined,color: Color.fromARGB(255, 50, 200, 130),),
                                  labelText: "Contraseña",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(20, 0, 30, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  child:const Text("¿Olvidaste tu contraseña?",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 50, 200, 130)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          TextButton(
                            
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'home');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 250,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF8A2387),
                                        Color(0xFFE94057),
                                        Color(0xFFF27121),
                                      ])
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text('Ingresar',
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 17 ,),
                          const SizedBox(height: 15,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}