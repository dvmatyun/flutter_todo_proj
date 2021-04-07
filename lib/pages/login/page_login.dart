import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertodoproj/common/common_managers/interfaces/ilogin_manager.dart';
import 'package:fluttertodoproj/common/widgets/input_forms/common_text_form.dart';
import 'package:fluttertodoproj/pages/login/bloc/login_bloc.dart';
import 'package:provider/provider.dart';

@immutable
class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);
  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {

  LoginBLoC? _loginBLoC;
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
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
        title: Text('Login page'),
      ),
      body: BlocBuilder(
        bloc: _loginBLoC,
        builder: (context, state) {
          if (state is LoadingState){
            return Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Login form is positioned more to the top from center
              SizedBox(height: MediaQuery.of(context).size.height / 4,),
              CommonTextForm(
                textEditingController: loginController,
                labelText: 'Login',
              ),
              CommonTextForm(
                textEditingController: passwordController,
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 200,),
                  //May add some form validation aswell:
                  TextButton(
                      onPressed: () => _loginBLoC?.add(LoginBlocEvent.login(loginController.text, passwordController.text)),
                      child: Text('Submit')
                  ),
                ],
              ),
              state is LoginFailedState
                  ? SelectableText(state.cause)
                  : SelectableText('Please, log in.')

            ],
          );
        },
      )
    );
  }
}
