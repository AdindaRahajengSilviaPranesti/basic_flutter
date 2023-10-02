import 'package:basic_flutter/components/card_news.dart';
import 'package:basic_flutter/components/main_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff3DC153),
            title: const Text("Berita Bola"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "BERITA BOLA",
                ),
                Tab(
                  text: "PERTANDINGAN",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const MainNews(),
                  Expanded(
                    child: ListView(
                      children: [
                        CardNews(
                          'Jakarta 20 Agustus 2023',
                          'Liverpool Juara lagi',
                          'images/champ-liverpool.jpg',
                        ),
                        CardNews(
                          'Malang, 24 September 2023',
                          'Yok bisa Liverpool yok',
                          'images/champ-liverpool.jpg',
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Center(
                child: Text("Halaman Jadwal"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
