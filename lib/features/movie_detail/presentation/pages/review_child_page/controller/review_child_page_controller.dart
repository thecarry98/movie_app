import 'package:get/get.dart';
import '../../../../domain/entities/review/review_entity.dart';
import '../../../../domain/usecase/review/get_full_review_usecase.dart';

class ReviewChildPageController extends GetxController {
  final String tag;
  ReviewChildPageController(this.tag, this.getFullReview);
  GetFullReviewUsecase getFullReview;
  Rx<FullReviewEntity?> fullReview = Rx<FullReviewEntity?>(null);
  var isLoading = false.obs;
  String id = Get.arguments['id'];

  void onInit() {
    callAPI();
    print(id + 'review');
    super.onInit();
  }

  void callAPI() async {
    isLoading.value = true;

    var result = await getFullReview(id);

    result.fold((l) => print('error'), (r) => {fullReview.value = r});
    isLoading.value = false;
  }
}
