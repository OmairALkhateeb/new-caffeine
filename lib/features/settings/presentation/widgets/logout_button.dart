
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth * 0.28,
          right: screenWidth * 0.05,
          top: screenHeight * 0.80),
      child: SizedBox(
        width: screenWidth * 0.45,
        height: (screenHeight * 0.1) * 0.6,
        child: ElevatedButton(
          onPressed: () {
            // print('signed in');
    
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => login()));
          },
          style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              backgroundColor: const Color(0xFF0F222D),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: const Center(
              child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.logout,
                    size: 30,
                    color: Color(0xffebe7d9),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 12),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        color: Color(0xffebe7d9),
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Oswald"),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
