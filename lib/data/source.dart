import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_study/domain/result.dart';

class Source {
  Future<Result<Map<String, dynamic>>> myPost(Map<String, dynamic> map) async {
    // try {
    //   var json = jsonEncode(map);
    //   var result = await http.post(Uri.parse("https://....."), body: json);
    //   var response = jsonDecode(result.body);
    //   return Result.success(response); // 성공했을때는 성공에 담아서 리턴
    // } catch (e) {
    //   return Result.error(e.toString()); // 실패했을때는 실패에 담아서 리턴
    // }

    return Result.success({"counter": 1});
  }
}
