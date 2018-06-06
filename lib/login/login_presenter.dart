
import 'package:flutter_sample_app/login/token.dart';
import 'package:flutter_sample_app/utils/restapi.dart';

/*
* to perform an action on the screen is thing V in MVP*/
abstract class LoginScreenContract {
  void onLoginSuccess(Token token);
  void onLoginError(String errorTxt);
}

/*Business login is nthng but P in MVP*/
class LoginScreenPresenter {
  LoginScreenContract _view;
  RestApis api = new RestApis();
  LoginScreenPresenter(this._view);

  doLogin(String username, String password) {
    api.login(username, password).then((Token user) {
      _view.onLoginSuccess(user);
    }).catchError((Exception error) => _view.onLoginError(error.toString()));
  }
}