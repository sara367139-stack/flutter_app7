import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // 1. نقلنا المتغيرات هنا جوه الـ State عشان الـ setState تشتغل صح
  bool _isDarkMode = false;
  bool _isNotificationsOn = true;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings ',
        style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCardTitle('General'),
              buildCardSection(
                children: [
                  buildCardTile(
                    title: 'Dart Mode',
                 //   subtitle: 'Sara Mohamed',
                    icon: Icons.dark_mode_outlined,
                    onTap: () {},
                    trailing: Switch(
                 value: _isDarkMode,
                 // بدل activecolor
               thumbColor: WidgetStateProperty.all(AppColors.white),
               trackColor: WidgetStateProperty.all(AppColors.primary),
                onChanged: (bool value) {
              setState(() {
                _isDarkMode = value;
              });
            },
          ),
                  ),
                  buildCardTile(
                    title: 'Notifications',
                //    subtitle: 'Manage your alerts',
                    icon: Icons.notifications_outlined,
                    onTap: () {},

                    trailing: Switch(
            value: _isNotificationsOn,
            // الاصدار الحديث 
           thumbColor: WidgetStateProperty.all(AppColors.white),
           trackColor: WidgetStateProperty.all(AppColors.primary),
            onChanged: (bool value) {
              setState(() {
                _isNotificationsOn = value;
              });
            },
          ),
                  ),
                  buildCardTile(
                    title: 'Language',
                  //  subtitle: 'Saved products',
                    icon: Icons.language,
                    onTap: () {},
                    trailing: const Text(
            'English',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
                  ),
                
                ],
             ),
                const SizedBox(height: 22),
             
               buildCardTitle('ACCOUNT'),
               buildCardSection(
                    children: [
               buildCardTile(
                    title: 'Change Passowrd',
                 //   subtitle: 'Track your orders',
                    icon: Icons.change_circle,
                    onTap: () {},
                  ),
                  buildCardTile(
                    title: 'Privacy Policy',
                 //   subtitle: 'Support center',
                    icon: Icons.privacy_tip,
                    onTap: () {},
                  ),
                  buildCardTile(
                    title: 'Terms of Service',
                 //   subtitle: 'Sara Mohamed',
                    icon: Icons.terminal_sharp,
                    onTap: () {},
                    showDivider: false,
                  ),
                    ],
               ),


               const SizedBox(height: 22),
               buildCardTitle('ABOUT'),
               buildCardSection(
                    children: [
               buildCardTile(
                    title: 'Version',
                 //   subtitle: 'Track your orders',
                    icon: Icons.verified_user,
                    onTap: () {},
                  ),
                    ],
               ),
            
            ],
          ),
        ),
      ),
    );
  }




  Widget buildCardSwitchTile({
  required String title,
  required IconData icon,
  required bool value,
   required VoidCallback onTap,
  required ValueChanged<bool> onChanged,
}) {
  return SwitchListTile(
    secondary: Icon(icon, color: Colors.grey[600]),
    title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
    value: value,
    thumbColor: WidgetStateProperty.all(Colors.white),
     trackColor: WidgetStateProperty.all(Colors.blue),
    onChanged: onChanged,
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
   // required String subtitle,
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
          //subtitle: Text(subtitle),
          trailing: trailing,
        //  trailing: Icon(icon),
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
