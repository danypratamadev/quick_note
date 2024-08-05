import 'package:flutter/material.dart';
import 'package:quick_note/views/bab7/model/user_model.dart';
import 'package:quick_note/views/bab7/services/user_service.dart';

class DetailUserPage extends StatefulWidget {
  const DetailUserPage({super.key});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {

  late UserModel detailUser;
  bool successGetDetail = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () => getDetailUser());
  }

  void getDetailUser() async {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    UserModel detailUserTemp = await UserService.fetchDetailUser(id: arguments['id']);
    if(detailUserTemp.email != '-') {
      setState(() {
        detailUser = detailUserTemp;
        successGetDetail = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Users',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: successGetDetail ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    detailUser.avatar ?? '-',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20.0,),
                Text(
                  '${detailUser.firstName} ${detailUser.lastName}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 3.0,),
                Text(
                  detailUser.email ?? '-',
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ) : const CircularProgressIndicator(),
          ),
        )
      ),
    );
  }
}