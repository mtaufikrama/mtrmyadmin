import 'package:dio/dio.dart';

class API {
  // static const _url = 'http://localhost:9000/';
  // static const _url = 'https://dash.a-dokter.id/';
  static const _url = 'https://a-dokter.id/';
  // static const _url = 'https://adokter.d-medis.id/';
  // static const _url = 'https://demo.a-dokter.id/';
  // static const _url = 'https://rspluit.sirs.co.id/';
  // static const _url = 'https://rsgading.sirs.co.id/';
  static const _baseUrl = '${_url}api/dev';
  // static const _baseUrl1 = '${_url}_api';
  static const _getToken = '$_baseUrl/token.php';
  // static const _getToken = '${_url}api/v1/get-token.php';
  static const _dev = '$_baseUrl/dev.php';
  static const _query = '$_baseUrl/query.php';
  // static const _dev = '$_baseUrl1/get-dokter.php';
  // static const _query = '$_baseUrl1/post-dokter.php';

  static Future getToken() async {
    var response = await Dio().post(
      _getToken,
      data: {"KeyCode": "MeTiRs"},
    );
    final obj = response.data;
    print(obj.runtimeType);
    print(obj);
    return obj;
  }

  // Tambahan Baru
  static Future dev(
      {String? method,
      String? dbname,
      String? isdb,
      String? tbl,
      dynamic fld}) async {
    // final token = await getToken();
    final data = {
      "method": method,
      "dbname": dbname,
      "isdb": isdb,
      "tbl": tbl,
      "fld": fld,
    };
    final token = await getToken();
    var response = await Dio().post(
      _dev,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "X-Api-Token": token['token'],
        },
      ),
      data: data,
    );
    final obj = response.data;
    print('kocak');
    print(obj);
    print(obj);
    return obj;
  }

  static Future query({String? isdb, String? dbname, String? sql}) async {
    // final token = await getToken();
    final data = {
      "isdb": isdb,
      "dbname": dbname,
      "sql": sql,
    };
    final token = await getToken();
    var response = await Dio().post(
      _query,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "X-Api-Token": token['token'],
        },
      ),
      data: data,
    );
    final obj = response.data;
    print(obj);
    return obj;
  }

  static Future showDatabase() async {
    final obj = await dev(method: 'sdb', isdb: '0');
    print(obj);
    return obj;
  }

  static Future showTable({String? dbname}) async {
    final obj = await dev(method: 'st', isdb: '1', dbname: dbname);
    print(obj);
    return obj;
  }

  static Future selectTable({String? fld, required String tbl}) async {
    final obj = await dev(method: 'sf', isdb: '1', fld: fld, tbl: tbl);
    print(obj);
    return obj;
  }

  static Future insertTable(
      {String? dbname,
      required Map<String, String> fld,
      required String tbl}) async {
    final obj =
        await dev(method: 'iiv', isdb: '1', dbname: dbname, fld: fld, tbl: tbl);
    print(obj);
    return obj;
  }

  static Future descTable({String? dbname, required String tbl}) async {
    final obj = await dev(method: 'dt', isdb: '1', dbname: dbname, tbl: tbl);
    print(obj);
    return obj;
  }

  static Future createDatabase({String? dbname}) async {
    final obj = await dev(method: 'cdb', isdb: '0', dbname: dbname);
    print(obj);
    return obj;
  }
}
