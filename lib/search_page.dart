import 'package:flutter/material.dart';

// Move the items list outside of the class to make it const
const List<Map<String, String>> items = [
  {
    'name': 'Nissan Skyline GT-R (R34)',
    'image': 'https://minigt.tsm-models.com/upload/mini_gt/products_gif/product_pic_big/1677008776_583993.JPG',
  },
  {
    'name': 'Nissan Skyline GT-R (R35)',
    'image': 'https://minigt.tsm-models.com/upload/mini_gt/products_gif/product_pic_big/1631225395_341510.JPG',
  },
  {
    'name': 'Nissan LB-Super Silhouette S15 SILVIA',
    'image': 'https://minigt.tsm-models.com/upload/picfile_list/c35a8d079a065cf9d6ff6238e0ec82f820240908041712443.jpg',
  },
  {
    'name': 'MAZDA RX-7 LB-Super Silhouette',
    'image': 'https://minigt.tsm-models.com/upload/picfile_list/79a7416e5e9c010ace2c40d27eec851720240908040948332.jpg',
  },
  {
    'name': 'Lamborghini  LB-Silhouette WORKS Aventador GT EVO',
    'image': 'https://minigt.tsm-models.com/upload/mini_gt/products_gif/product_pic_big/1680629075_561100.JPG',
  },
  {
    'name': 'Toyota GR Supra LB-Works',
    'image': 'https://minigt.tsm-models.com/upload/mini_gt/products_gif/product_pic_big/1672905561_526793.JPG'
  },
];

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Kolom Search di atas GridView
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // GridView dengan item dan gambar
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom di grid
                  crossAxisSpacing: 10.0, // Jarak antar kolom
                  mainAxisSpacing: 10.0, // Jarak antar baris
                ),
                itemCount: items.length, // Jumlah item yang ditampilkan
                itemBuilder: (context, index) {
                  return Card(
                    child: GridTile(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Display image with BoxFit.contain to ensure image is not cropped
                          Expanded(
                            child: Image.network(
                              items[index]['image']!,
                              fit: BoxFit.contain, // Ensure image is not cropped
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Display item name centered
                          Text(
                            items[index]['name']!,
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center, // Center the text
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
