import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:landina_coupon/ui/components/modals/about.modal.dart';
import 'package:landina_coupon/ui/widgets/appbar/appbar.dart';

// String Extension for Capitalize
import 'package:landina_coupon/ui/extensions/string.extension.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: LandinaAppbar(
          title: AppLocalizations.of(context)!.brand.capitalize(),
          rightIcon: IconlyLight.category,
          rightIconOnPressed: () {},
          leftIcon: IconlyLight.arrow_left,
          leftIconOnPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        key: const PageStorageKey<String>('profile'),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          Wrap(
            spacing: 15,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: ShapeDecoration(
                  color: const Color(0xffF1F1F1),
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 18,
                      cornerSmoothing: 0.5,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 5,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.appName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.brand,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff3B3B3B).withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context)!.brandName,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff3B3B3B).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.loginPageDescription +
                AppLocalizations.of(context)!.loginPageDescription +
                AppLocalizations.of(context)!.loginPageDescription,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: const Color(0xff3B3B3B).withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
