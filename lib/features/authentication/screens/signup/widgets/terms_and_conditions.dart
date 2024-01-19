
import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: FBSizes.spaceBtwItems,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${FBTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${FBTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
                text: 'and ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${FBTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium)
          ])),
        )
      ],
    );
  }
}
