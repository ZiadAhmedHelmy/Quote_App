import 'package:api_app/utils/appColor.dart';
import 'package:api_app/viewModel/bloc/qouteCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          "assets/images/quotes-svgrepo-com.svg",
          width: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            QuoteCubit.get(context).quoteModel?.quote?.body ??
                "Loading",
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
            padding: const EdgeInsets.all(10),
            child:
            QuoteCubit.get(context).quoteModel?.quote?.author !=
                null
                ? Center(
              child: Text(
                "-${QuoteCubit.get(context)
                    .quoteModel!
                    .quote!
                    .author!}",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
                : const CircularProgressIndicator()),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.share,
                  color: Colors.grey,
                  size: 40,
                ),
                QuoteCubit.get(context)
                    .quoteModel
                    ?.quote
                    ?.upvotesCount! !=
                    null
                    ? Text(
                  QuoteCubit.get(context)
                      .quoteModel!
                      .quote!
                      .upvotesCount
                      .toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
                    :  CircularProgressIndicator(color: AppColor.grey,)
              ],
            ),
            Column(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 40,
                ),
                QuoteCubit.get(context)
                    .quoteModel
                    ?.quote
                    ?.favoritesCount! !=
                    null
                    ? Text(
                  QuoteCubit.get(context)
                      .quoteModel!
                      .quote!
                      .favoritesCount
                      .toString()!,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
                    : CircularProgressIndicator(color: AppColor.backG,)
              ],
            )
          ],
        ),
      ],

    );
  }
}
