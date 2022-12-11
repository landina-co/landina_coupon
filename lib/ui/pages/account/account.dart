import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:landina_coupon/ui/widgets/appbar/appbar.dart';
import 'package:landina_coupon/ui/widgets/buttons/text.button.dart';

// String Extension for Capitalize
import 'package:landina_coupon/ui/extensions/string.extension.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
          parent: ClampingScrollPhysics(),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 15,
                  crossAxisAlignment: WrapCrossAlignment.center,
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 8,
                            crossAxisAlignment: WrapCrossAlignment.center,
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
                                    fontSize: 12,
                                    color: const Color(0xff3B3B3B)
                                        .withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            AppLocalizations.of(context)!.brandName,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff3B3B3B).withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.loginPageDescription,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    height: 2,
                    color: const Color(0xff3B3B3B).withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ButtonBarSuper(
            lineSpacing: 15,
            wrapType: WrapType.balanced,
            wrapFit: WrapFit.divided,
            children: [
              LandinaTextButton(
                title: AppLocalizations.of(context)!.follow.capitalize(),
                onPressed: () {},
              ),
              LandinaTextButton(
                title: AppLocalizations.of(context)!.website.capitalize(),
                onPressed: () {},
              ),
              LandinaTextButton(
                title: AppLocalizations.of(context)!.website.capitalize(),
                onPressed: () {},
              ),
              LandinaTextButton(
                title: AppLocalizations.of(context)!.website.capitalize(),
                onPressed: () {},
              ),
              LandinaTextButton(
                title: AppLocalizations.of(context)!.website.capitalize(),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/not_found.png",
                  width: 250,
                ),
                const SizedBox(height: 25),
                Text(
                  "هنوز هیچ کوپنی اینجا نیست!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff3B3B3B).withOpacity(0.9),
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