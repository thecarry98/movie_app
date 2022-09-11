import 'package:get/get.dart';

import '../../../../domain/entities/movie_entity.dart';
import '../../../../domain/usecase/get_coming_soon_usecase.dart';

class ComingSoonPageController extends GetxController {
  ComingSoonPageController(this.tag, this.getComingSoonUsecase);
  final GetComingSoonUsecase getComingSoonUsecase;
  final String tag;
  var isLoading = false.obs;
  var listMovie = [].obs;
  late Rx<ListMovie?> list = Rx<ListMovie?>(null);

  void onInit() async {
    _callAPI();
    super.onInit();
  }

  void _callAPI() async {
    isLoading.value = true;

    var result = await getComingSoonUsecase();

    result.fold((l) => print('error left'), (r) => {listMovie.addAll(r.list)});

    isLoading.value = false;
  }
}
