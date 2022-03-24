import '../Models/rest_client.dart';
import 'call_api.dart';
import 'app_config.dart';

class BlippyUtils {
  static getCode() async {
    var httpResponse = await CallApi.getRestClient().getCountryCode();
    if (httpResponse?.data != null) {
      AppConfig.countryCodeData  = httpResponse!.data!;
    }
  }
}