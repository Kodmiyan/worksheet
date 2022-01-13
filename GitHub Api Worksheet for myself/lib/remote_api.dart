import 'package:api/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({Key? key}) : super(key: key);

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {
  Future<List<UserModel>> _getUserList() async {
    try {
      var response =
          await Dio().get("https://jsonplaceholder.typicode.com/users");
      // ignore: unused_local_variable
      List<UserModel> userlist = [];

      if (response.statusCode == 200) {
        var userlist =
            (response.data as List).map((e) => UserModel.fromMap(e)).toList();
        return userlist;
      } else {
        return [];
      }
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }

  late final Future<List<UserModel>> _userList;

  @override
  void initState() {
    _userList = _getUserList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remote APİ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remote Api with Dio'),
        ),
        body: Center(
          child: FutureBuilder<List<UserModel>>(
            future: _userList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var userList = snapshot.data!;
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    var user = userList[index];
                    return ListTile(
                      title: Text(user.email),
                      subtitle: Text(user.address.toString()),
                      leading: Text(user.id.toString()),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
