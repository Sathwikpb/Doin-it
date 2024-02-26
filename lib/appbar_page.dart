import 'package:doinit/CustomBackgroundPage.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: ClipPath(
            clipper: RoundedAppBarClipper(),
            child: Container(
              color: Color.fromARGB(255, 0, 0, 0),
              child: AppBar(
                backgroundColor: const Color.fromARGB(255, 50, 40, 118),
                elevation: 10.0,
                title: const Center(
                  child: Text(
                    'Sheeesh',
                    style: TextStyle(
                      fontFamily: 'Micro5',
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 178, 178, 178),
                    ),
                  ),
                ),
                centerTitle: true,
              ),
            ),
          ),
        ),
        body: const BackgroundPage(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RoundedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(0, size.height, 30, size.height);
    path.lineTo(size.width - 30, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
