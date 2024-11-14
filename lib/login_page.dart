import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String staticUsername = 'Daffa';
  String staticPassword = 'tes';

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == staticUsername && password == staticPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashboardPage(username: username),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Failed'),
          content: const Text('Invalid username or password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/2d/02/cf/2d02cfd21518ca51854bb06cd6bab710.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon User Profile
               CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: ClipOval(
                    child: Image.network(
                      'https://scontent-cgk1-1.xx.fbcdn.net/v/t39.30808-6/363339275_111793885341604_7301233373824174936_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGrRw1z5h4B0f3SR-L3f-_Q_omP0uluL37-iY_S6W4vfrVWSHhbkUGh7_6RNhb5m5MW-ZxLEA7SQTlPKtXDitBr&_nc_ohc=2Cc6StawzpwQ7kNvgFNd6iH&_nc_oc=AdhLvOR4y9jba_GT2FTR7ilYC4PMcw6VLd49X1OAJWKYiERTaLWq9W5IVHTvAxyDk1s&_nc_zt=23&_nc_ht=scontent-cgk1-1.xx&_nc_gid=A7QsL1tjy78_PF_IRNtcEh1&oh=00_AYA3VjqhSe5m0u7zZeVSl0QttJSr2ESoJ9xiRd-WJLG7nQ&oe=673BD07B',
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Username Field
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.5),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                // Password Field
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.5),
                  ),
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                // Login Button
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.7),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          // Copyright Text
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Copyright © mdaffafikriawan 22552011102',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
