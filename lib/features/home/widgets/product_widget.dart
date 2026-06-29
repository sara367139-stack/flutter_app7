import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final String price;
  final String imageUrl;

  const ProductModel({
    required this.title,
    required this.price,
    required this.imageUrl,
  });
}


class ProductGridWidget extends StatelessWidget {
const ProductGridWidget({super.key});

  final List<ProductModel> products = const [
    ProductModel(
      title: 'Pro Soccer Ball',
      price: '\$29.99',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI3gZb-usCozcumaDsi5NGwfVozC3L97GbptPZTVAHEQ&s=10',
    ),
    ProductModel(
      title: 'Runner X1',
      price: '\$89.99',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR09ImtS-seZJ2V5rwf2LiSOfhzlKKeMVg0A8B0kW83w&s=10',
    ),
    ProductModel(
      title: 'Classic Jersey',
      price: '\$45.00',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp_8lmalFiroz1M_5qAwKBhgwGAnUYGLTF6thRpcqGDQ&s=10',
    ),
    ProductModel(
      title: 'Gym Duffle Bag',
      price: '\$35.50',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPOTS2MZsaadyIJDVJW58I92LipSuhQDtbbV7tSTc6PA&s',
    ),
    // ProductModel(
    //   title: 'Sports Water Bottle',
    //   price: '\$15.00',
    //   imageUrl: 'https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=500',
    // ),
    // ProductModel(
    //   title: 'Smart Fitness Watch',
    //   price: '\$120.00',
    //   imageUrl: 'https://images.unsplash.com/photo-1575311373937-040b8e1fd5b6?w=500',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, //خلي حجم الـ GridView على قد العناصر اللي جواها، مش على قد الشاشة كلها.
      physics: const NeverScrollableScrollPhysics(),
      //امنع الـ GridView من إنه يعمل Scroll.
      //احنا إحنا مش عايزين الـ GridView هو اللي يعمل Scroll.
      // عايزين الشاشة كلها هي اللي تتحرك.
      //احنا 
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //رتب العناصر في شبكة بعدد أعمدة ثابت.
        //      gridDelegate
        //هي المسؤولة عن:
       // عدد الأعمدة
       //// حجم كل عنصر.
        // المسافات بين العناصر.
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.62,
      ),
      itemBuilder: (context, index) {
        return ProductCardWidget(product: products[index]);
      },
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(
                  product.imageUrl,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.orange.shade800,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  product.price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade800,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xfff0f4fd),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xff1d5ce5),
                          size: 18,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Add',
                          style: TextStyle(
                            color: Color(0xff1d5ce5),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
