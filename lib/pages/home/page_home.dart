import 'package:flutter/material.dart';
import 'package:fluttertodoproj/common/common_managers/interfaces/ilogin_manager.dart';
import 'package:fluttertodoproj/pages/login/bloc/login_bloc.dart';
import 'package:provider/provider.dart';

@immutable
class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);
  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  LoginBLoC? _loginBLoC;

  @override
  void initState() {
    super.initState();
    // ...
  }

  @override
  void didChangeDependencies() {
    if (_loginBLoC == null){
      _loginBLoC = LoginBLoC(Provider.of<ILoginManager>(context));
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _loginBLoC?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Greeting is positioned more to the top from center
            SizedBox(height: MediaQuery.of(context).size.height / 4,),
            SelectableText('Welcome home!'),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 200,),
                TextButton(
                    onPressed: (){
                      //Logout action here:
                      Navigator.pushNamed(context, '',);
                    },
                    child: Text('Logout')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
