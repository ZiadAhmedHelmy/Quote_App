import 'package:api_app/Screens/QuoteSection.dart';
import 'package:api_app/utils/appColor.dart';
import 'package:api_app/viewModel/bloc/QuoteStates.dart';
import 'package:api_app/viewModel/bloc/qouteCubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.backG,
      body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(
                        4, 4), // Adjust the values to position the shadow
                  ),
                ],
              ),
              child: BlocConsumer<QuoteCubit, QuoteStats>(
                builder: (context, state) {
                    return QuoteSection();
                },
                listener: (context, state) {},
              ),
            ),
          ),

          IconButton(onPressed: (){
            QuoteCubit.get(context).getQuote();
          }, icon: Icon(Icons.refresh , color: AppColor.blue, size: 35,)),
        ],
      ),
    );
  }
}
