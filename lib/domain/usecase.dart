import 'package:test_study/domain/repository.dart';

class Usecase {
  Usecase(this.repo);
  Repository repo;
  increase(counter) async {
    // 가공
    return await repo.increase(counter);
    // Result result = repo.increase(counter);

    // Result.when(
    //     success: (data) {},
    //     error: (e) {
    //       print(e);
    //     });
  }
}
