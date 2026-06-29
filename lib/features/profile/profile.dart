import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/widgets/bottom_nav.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 // int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/'),
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 20),
            const Text(
              'Sara Mohamed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'sara.mohamed@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),


            const SizedBox(height: 16),

buildCardSection(
  children: [
    buildCardTile(
      title: 'My Orders',
      subtitle: 'Track your purchases',
      icon: Icons.receipt_long_outlined,
      onTap: () {},
    ),
    buildCardTile(
      title: 'Favorites',
      subtitle: 'Your saved products',
      icon: Icons.favorite_border,
      onTap: () {},
    ),
    buildCardTile(
      title: 'Payment Methods',
      subtitle: 'Manage your cards',
      icon: Icons.payment_outlined,
      onTap: () {},
    ),
    buildCardTile(
      title: 'Shipping Address',
      subtitle: 'Manage delivery address',
      icon: Icons.location_on_outlined,
      onTap: () {},
    ),
    buildCardTile(
      title: 'Help Center',
      subtitle: 'Get support',
      icon: Icons.help_outline,
      onTap: () {},
    ),
   
  ],
),

            const SizedBox(height: 16),
buildCardSection(
      children: [
       buildCardTile(
       title: 'Logout ',
       subtitle: 'Sara Mohamed ',
       icon: Icons.logout_outlined,
        onTap: () {},
        showDivider: false,
                ),
              ],
            ),

            // ListTile(
            //   leading: const Icon(Icons.receipt_long_outlined),
            //   title: const Text('My Orders'),
            //   subtitle: const Text('View and edit your personal details'),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            //   onTap: () {},
            // ),
            // ListTile(
            //   leading: const Icon(Icons.favorite_border),
            //   title: const Text('Favorites'),
            //   //  subtitle: const Text('View and edit your educational details'),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            //   onTap: () {},
            // ),
            // ListTile(
            //   leading: const Icon(Icons.payment_outlined),
            //   title: const Text('Payment Methods'),
            //   //   subtitle: const Text('View and edit your progress details'),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            //   onTap: () {},
            // ),
            // ListTile(
            //   leading: const Icon(Icons.help_outline),
            //   title: const Text('Help Center'),
            //   //  subtitle: const Text('View and edit your settings'),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            //   onTap: () {},
            // ),
 
          ],
        ),
      ),
//     bottomNavigationBar: CustomBottomNavBar(
//   currentIndex: _currentIndex,
//   onTap: (index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   },
// ),
    
    );
  }

  Widget buildCardTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildCardSection({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: children,
      ),
    );
  }

  Widget buildCardTile({
    required String title,
    String? subtitle,
    required IconData icon,
    required VoidCallback onTap,
    bool showDivider = true,
    Widget? trailing,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: subtitle == null ? null : Text(subtitle),
          trailing: trailing,
          onTap: onTap,
        ),
        if (showDivider)
          const Divider(
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
      ],
    );
  }
}
