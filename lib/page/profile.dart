import 'package:flutter/material.dart';
import 'package:flutter_instagram/widgets/detail_info.dart';
import '../widgets/profile_widget.dart';
import '../widgets/detail_info.dart';
import '../widgets/option_profile.dart';
import '../widgets/story_item.dart';
import '../widgets/galery_kontak.dart';
import '../widgets/login.dart';

void main() {
  runApp(const MyApp());
}

final List<String> imagePaths = [
  "images/Post2.jpeg",
  "images/Post3.jpeg",
  // Tambahkan path gambar-gambar lainnya di sini sesuai kebutuhan
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: profile(),
    );
  }
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            children: [
              Text(
                "AhmadSeptian",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileWidget(),
                DetailInfo("Posts", "2"),
                DetailInfo("Followers", "521"),
                DetailInfo("Following", "1"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            OptionProfile(),
            SizedBox(
              height: 15,
            ),
            // StoryItem(),
            SizedBox(
              height: 15,
            ),
            TabItems(),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 150,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                if (index >= 0 && index < imagePaths.length) {
                  return Image.asset(
                    imagePaths[
                        index], // Menggunakan path gambar berdasarkan indeks
                    fit: BoxFit.cover,
                  );
                } else {
                  return Container(); // Atau Widget lain yang sesuai dengan kebutuhan Anda
                }
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded, size: 30),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined, size: 30),
              label: "Tambah",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined, size: 30),
              label: "Movie",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20, // Menyesuaikan radius sesuai kebutuhan
                backgroundColor: Colors.black,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(15), // Menyesuaikan border radius
                  child: Image.asset(
                    'images/logo.jpeg', // Path gambar Anda
                    width: 50,
                    height: 30,
                    fit: BoxFit
                        .cover, // Menyesuaikan gambar agar sesuai dengan container
                  ),
                ),
              ),
              label: "Profile",
            ),
          ],
        ));
  }
}
