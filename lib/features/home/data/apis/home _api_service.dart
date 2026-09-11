import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/features/home/data/apis/home_api_constant.dart';
import 'package:doctor/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstant.specializationEndPoint)
  Future<SpecializationsResponseModel> getSpecialization();
}
