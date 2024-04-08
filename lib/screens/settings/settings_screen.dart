import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindmemo_app/theme/colors.dart';
import 'package:mindmemo_app/widgets/app_container.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: AppColors.black10,
            height: 1.0,
          ),
        ),
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Settings',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AppContainer(child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/images/settings/share.svg'),
                  title: Text(
                    'Share with friends',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black40),
                ),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/images/settings/terms.svg'),
                  title: Text(
                    'Terms of use',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black40),
                ),
                ListTile(
                  onTap: () {},
                  leading: SvgPicture.asset('assets/images/settings/privacy-policy.svg'),
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: AppColors.black40),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
