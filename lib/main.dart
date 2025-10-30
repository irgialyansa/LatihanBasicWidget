import 'package:flutter/material.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Layout',
      home: TrendingPage(),
    );
  }
}

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {

  final List<String> nowPlayingImages = [
    'https://cnc-magazine.oramiland.com/parenting/images/Sinopsis-Spirited-away.width-800.format-webp.webp',
    'https://akcdn.detik.net.id/community/media/visual/2023/10/26/anime-ghibli-terbaik-from-up-on-poppy-hill-2011.jpeg?w=620&q=90',
    'https://awsimages.detik.net.id/community/media/visual/2018/09/05/2e0e4547-fcc9-4abe-ac73-4c25cd803211.jpeg?w=800',
    'https://cdns.klimg.com/kapanlagi.com/p/paging/5-film-anime-studio-ghibli-jadul-ya-1-6f35a14e4b.jpg'
  ];

  @override
  void initState() {
    super.initState();
    WakelockPlus.enable();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Now Playing Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Now Playing',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // CardSwiper Now Playing
              SizedBox(
                height: 500,
                child: CardSwiper(
                  cardsCount: nowPlayingImages.length,
                  cardBuilder: (context, index, percentX, percentY) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(nowPlayingImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 24),

              // Top List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top List',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Trending Horizontal Scroll
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    trendingMovie(
                        'https://cdns.klimg.com/kapanlagi.com/p/paging/5-film-anime-studio-ghibli-jadul-ya-0-1a1454031b.jpg'),
                    trendingMovie(
                        'https://cdns.klimg.com/kapanlagi.com/p/paging/5-film-anime-studio-ghibli-jadul-ya-2-4615a14c4b.jpg'),
                    trendingMovie(
                        'https://cdns.klimg.com/kapanlagi.com/p/paging/5-film-anime-studio-ghibli-jadul-ya-3-a12b9a145b.jpg'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=078886145X&issn=/LC.JPG&client=arapp&type=xw12'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=&issn=/LC.JPG&client=arapp&type=xw12&upc=786936840346&oclc=881841782'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=0788896687&issn=/LC.JPG&client=arapp&type=xw12&oclc=505873522'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=0788834045&issn=/LC.JPG&client=arapp&type=xw12'),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Trending Minggu Ini 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Minggu Ini',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    trendingMovie(
                        'http://ecx.images-amazon.com/images/I/51QdDMNZmEL.jpg'),
                    trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=&issn=/LC.JPG&client=arapp&type=xw12&upc=025192307355'),
                        trendingMovie(
                        'http://ecx.images-amazon.com/images/I/61d05H2pnHL.jpg'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=&issn=/LC.JPG&client=arapp&type=xw12&upc=786936819885&oclc=790688989'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=&issn=/LC.JPG&client=arapp&type=xw12&upc=767685294178&oclc=853458195'),
                    trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=078885772X&issn=/LC.JPG&client=arapp&type=xw12'),
                        trendingMovie(
                        'https://www.syndetics.com/index.aspx?isbn=&issn=/LC.JPG&client=arapp&type=xw12&upc=786936809824&oclc=689131534'),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget trendingMovie(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          width: 100,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SwiperController {
}