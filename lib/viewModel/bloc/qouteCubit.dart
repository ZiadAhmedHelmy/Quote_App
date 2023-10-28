import 'package:api_app/model/Quote/quote_model.dart';
import 'package:api_app/viewModel/bloc/QuoteStates.dart';
import 'package:api_app/viewModel/network/dio_helper.dart';
import 'package:api_app/viewModel/network/end_points.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteCubit extends Cubit<QuoteStats>{
   QuoteCubit() : super(initQuote());

   static QuoteCubit get(context) => BlocProvider.of(context);

    QuoteModel? quoteModel;

    Future<void> getQuote()async {
      emit(LoadingDailyQuote());
       final Response response = await DioHelper.get(endPoint: EndPoints.quoteOfTheDay);
       if(response.statusCode==200 && response != null){
         quoteModel = QuoteModel.fromJson(response.data);
         emit(getDailyQuote());
       }
       else{
         emit(errorGetQuote());
       }
    }

}