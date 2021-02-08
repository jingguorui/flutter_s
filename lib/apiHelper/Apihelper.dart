import 'package:dio/dio.dart';

void getRequest(callback) async{
  Dio dio =  Dio();
  var header = {"Content-Type":"application/x-www-form-urlencoded"};
  var options = Options(headers:header);
//   地址为（深高速地址，不存在token）
  var url ='http://dd-test.gcnao.cn/gateway/unit/company/getConfig?hostname=http:%2F%2Fdd-test.gcnao.cn&pathname=%2F';
  var response = await dio.get(url,options: options);
  if(response.statusCode == 200){
    var res = response.data;
    print("获取到的数据\n$res");
    callback(res);
    return res;
  }else{
    print("失败时获取到的数据\n$response.statusCode");
  }

}