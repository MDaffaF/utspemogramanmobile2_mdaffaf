import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String username; // Declare the username field

  // Constructor to accept the username
  const ProfilePage({super.key, required this.username});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.network(
              'https://static.wikia.nocookie.net/minigt/images/b/b1/Logo3.jpg/revision/latest?cb=20201124084256',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Ikon User
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueAccent,
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                // Display the username dynamically
                Text(
                  '${widget.username}', // Use widget.username here
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          
          // Opsi Ganti Kata Sandi - Static (Non-clickable)
          Card(
            child: const ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
              // Remove onTap so it's not clickable
            ),
          ),
          
          // Opsi Tentang Aplikasi - Static (Non-clickable)
          Card(
            child: const ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              // Remove onTap so it's not clickable
            ),
          ),
          
          // Opsi Logout Akun - Static (Non-clickable)
          Card(
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout Account'),
              // Remove onTap so it's not clickable
            ),
          ),
        ],
      ),
    );
  }
}
