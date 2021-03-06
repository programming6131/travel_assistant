import 'package:jua_area/core/base/service/base_service.dart';
import 'package:jua_area/ui/detail/model/detail_model.dart';

import 'IDetail_service.dart';

class DetailService extends IDetailService {
  @override
  Future<List<DetailModel>> getImgList() async {
    return await httpGet<DetailModel>(
        "https://fb-travel-app.firebaseio.com/product/traveller/0/sharedImg.json",
        DetailModel());
  }
}
