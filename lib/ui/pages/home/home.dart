import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:landina_coupon/ui/components/coupon/coupon.dart';
import 'package:landina_coupon/ui/components/modals/filter.modal.dart';
import 'package:landina_coupon/ui/pages/categories/categories.dart';
import 'package:landina_coupon/ui/pages/profile/profile.dart';
import 'package:landina_coupon/ui/widgets/appbar/appbar.dart';
import 'package:landina_coupon/ui/components/modals/login.modal.dart';
import 'package:landina_coupon/ui/widgets/textfield/textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: LandinaAppbar(
            title: AppLocalizations.of(context)!.appName,
            rightIcon: IconlyLight.category,
            rightIconOnPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CategoriesPage();
                  },
                ),
              );
            },
            leftIcon: IconlyLight.profile,
            leftIconOnPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              var userEmail = prefs.getString("email");
              var userPassword = prefs.getString("password");
              print(userEmail);
              print(userPassword);

              userEmail == null && userPassword == null
                  ? loginModal(context)
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    );
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 1,
                    color: Color(0xffF1F1F1),
                  ),
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: LandinaTextField(
                  hintText: AppLocalizations.of(context)!.searchField,
                  prefixIcon: IconlyLight.search,
                  prefixIconOnPressed: () {},
                  suffixIcon: IconlyLight.filter,
                  suffixIconOnPressed: () {
                    filterModal(context);
                  },
                  obscureText: false,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                key: const PageStorageKey<String>('home'),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Coupon(
                    title: AppLocalizations.of(context)!.couponTextTitle,
                    brand: AppLocalizations.of(context)!.brandName,
                    description:
                        AppLocalizations.of(context)!.couponDescription,
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
