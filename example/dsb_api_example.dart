import 'package:dsb_api/dsb_api.dart';

void main() async {
  var dsb = DSBController('username', 'password');
  var data = await dsb.dsbGetData();
  var timetables = await dsb.dsbGetTimeTables(data);
  print(timetables[0].substitutes.where((e) => e.newDSBSubject == DSBSubject.entfaellt).toList());
}