import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class ProductModel {
  final String image;
  final String title;
  final String description;
  final double price;

  const ProductModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}

const List<ProductModel> products = [
  ProductModel(
    image: 'assets/images/soccer_ball.jpeg',
    title: 'Pro Soccer Ball',
    description: 'FIFA approved match ball',
    price: 29.99,
  ),
  ProductModel(
    image: 'assets/images/running_shoes.jpeg',
    title: 'Running Shoes',
    description: 'Lightweight running shoes',
    price: 89.99,
  ),
  ProductModel(
    image: 'assets/images/classic_jersey.jpeg',
    title: 'Classic Jersey',
    description: 'Breathable basketball jersey',
    price: 45.00,
  ),
  ProductModel(
    image: 'assets/images/gym_bag.jpeg',
    title: 'Gym Duffle Bag',
    description: 'Water-resistant training bag',
    price: 35.50,
  ),
  ProductModel(
    image: 'assets/images/tennis_racket.jpeg',
    title: 'Pro Tennis Racket',
    description: 'Carbon fiber tennis racket',
    price: 120.00,
  ),
  ProductModel(
    image: 'assets/images/yoga_mat.jpeg',
    title: 'Yoga Mat',
    description: 'Non-slip eco friendly mat',
    price: 22.00,
  ),
  ProductModel(
    image: 'assets/images/soccer_ball.jpeg',
    title: 'Soccer Cleats',
    description: 'Firm ground football boots',
    price: 64.99,
  ),
];

class _AllProductsState extends State<AllProducts> {
    int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Products',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      product.image,
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 110,
                          height: 110,
                          color: Colors.grey.shade200,
                          child: const Icon(
                            Icons.sports_soccer,
                            size: 46,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          product.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 44,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 51, 80, 45),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),


       BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: 'Shop',
        ),
     
         BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
       
      
      BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        ],
      ),
    
    
    
    
    
    
    
    
    
    
    
    
    );
  }
}
