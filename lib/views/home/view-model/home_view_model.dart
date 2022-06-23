import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:vitra_smart_remote/core/base/model/base_view_model.dart';
import 'package:vitra_smart_remote/core/constant/navigation/navigation_constants.dart';
part 'home_view_model.g.dart';


class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store, BaseViewModel {


  @observable
  int number = 0;

  @action
  void incrementNumber() {
    number++;
  }

  Future<void> navigateMainPage() async {
    await navigation.navigateToPage(path: NavigationConstants.TEST_VIEW);
  }
}
