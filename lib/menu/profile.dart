
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'yusufaa_21',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.menu, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto profil dan statistik
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(width: 25),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Statistik(jumlah: '0', label: 'Posts'),
                        Statistik(jumlah: '400', label: 'Followers'),
                        Statistik(jumlah: '321', label: 'Following'),
                      ],
                    ),
                  ),  
                ],
              ),
            ),

            // Nama dan bio
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  SizedBox(height: 4),
                   Text('Student|SMK RUS KUDUS | PPLG'),
                   Text('my life my rules'),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Tombol Edit Profile
            
            // Tombol Edit Profile dan Share Profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Share Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
            // Story Highlight
            const Row(
              children: [
                StoryItem(icon: Icons.add, label: 'New'),
                StoryItem(icon: Icons.favorite, label: 'Life'),
                StoryItem(icon: Icons.music_note, label: 'Music'),
                StoryItem(icon: Icons.school, label: 'School'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget statistik profil
class Statistik extends StatelessWidget {
  final String jumlah;
  final String label;

  const Statistik({
    super.key,
    required this.jumlah,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          jumlah,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }
}

// Widget Story Highlight
class StoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const StoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade300,
            child: Icon(icon, color: Colors.black),
          ),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
