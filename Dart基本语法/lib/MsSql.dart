import 'Db.dart';

class MsSql implements Db {
  @override
  String uri;

  @override
  add(String data) {
    print('这是mssql的add方法'+data);
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }


}