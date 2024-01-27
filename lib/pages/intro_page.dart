import 'package:flutter/material.dart';
import 'package:nike_ecom/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Image.asset('lib/images/nike.png',
              height: 240,
              scale: 3,
              ),
            ),

            SizedBox(height: 48),

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Text('Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              
              ),
            ),

            SizedBox(height: 20),

            Text('Brand new sneakers and custom kicks made with premium quality.',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),  
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text('Start Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    
                    ),),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}