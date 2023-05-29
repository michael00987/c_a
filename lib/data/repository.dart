import 'package:test_study/data/source.dart';

import 'package:test_study/domain/model.dart';
import 'package:test_study/domain/repository.dart';

class RepositoryImpl implements Repository {
  Source api;
  RepositoryImpl(this.api);

  @override
  Future<CounterModel> increase(int counter) async {
    print("aa");

/*

    var networkModel = CounterModel(counter: counter);
    var map = networkModel.toJson();
    var response = await api.myPost(map);
    // api에서 받은 데이터를 성공일수도 있고 실패일수도 있으니깐 freezed 로 만든 class 에 들어있는 when 메서드로 분기해서 처리
    // 지금은 CounterModel를 반환하는 함수인데, 실패했을 때는 CounterModel를 반환할수 없기때문에 Result(성공일수도, 실패일수도) 타입으로 반환하는 코드를 작성하는 것이 좋을것 같음
    response.when(success: (data) {
      // 여기서 반환하는 것은 response에 담기기 때문에 17줄( response.when ) 앞 에서도 return을 해야하지만, 현재 CounterModel을 반환하는 Result타입을 반환하는 함수로 변환하고, error 일때 처리도 해야함
      return CounterModel.fromJson(data);
    }, error: (e) {
      print(e);
    });
    // 만약 Data 레이어에서 성공실패 구분이 필요 없고, 도메인 레이어 혹은 프레젠테이션 레이어에서 처리할 계획이면,  Result 타입을 반환하는함수로 변경하고, response 을 when 분기 하지 않고 리턴하면 됨.
    // return response;

*/
    // network 통신
    // var json = jsonEncode(map);
    // var result = await http.post(Uri.parse("https:....."), body: json);
    // var response = jsonDecode(result.body);
    // CounterModel.fromJson(response);

    print("network 통신 -> counter 증가 ${counter}");

    await Future.delayed(Duration(seconds: 1));
    var model = CounterModel(counter: counter);
    return model;
  }
}
