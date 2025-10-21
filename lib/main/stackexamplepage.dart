import 'package:flutter/material.dart';

class StackExamplePage extends StatelessWidget {
  const StackExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', height: 80),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hallo Izza Aditya!',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Mau masak apa hari ini?'),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    backgroundColor: Colors.grey[180],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// Menu
              Row(
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuItem('assets/icons/bakso.png', 'Bakso'),
                  SizedBox(width: 39),
                  menuItem('assets/icons/ramen.png', 'Ramen'),
                  SizedBox(width: 39),
                  menuItem('assets/icons/pizza.png', 'Pizza'),
                  SizedBox(width: 39),
                  menuItem('assets/icons/taco.png', 'Taco'),
                 
                
                ],
              ),
            
              const SizedBox(height: 25),

              /// Recommeded Label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              const SizedBox(height: 56),

              /// List Card (Horizontal)
              SizedBox(
                height: 260,
              
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return cardItem(
                      title: 'Nasi Goreng Spesial Khas Malang',

                      color: index == 0
                          ? Colors.teal
                          : index == 1
                          ? Colors.orange
                          : index == 2
                          ? Colors.blue
                          : index == 3
                          ? Colors.purple
                          : Colors.brown,
                      imageAsset: 'assets/images/nasi-goreng.png',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String asset, String label) {
    return Column(
      children: [
        Image.asset(asset, height: 40),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget cardItem({
    required String title,
    required Color color,
    required String imageAsset,
  }) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(title, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star_border, color: Colors.white, size: 16),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.access_time, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text('5 Min', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 13 ,
            left: 11,
            child: Image.asset(imageAsset, height: 130),
          ),
        ],
      ),
    );
  }
}
