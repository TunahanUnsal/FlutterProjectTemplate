import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:vitra_smart_remote/core/base/state/base_state.dart';
import 'package:vitra_smart_remote/core/base/view/base_view.dart';
import 'package:vitra_smart_remote/views/home/view-model/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> {
  HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onPageBuilder: ((buildContext, value) => scaffoldBody),
      onModelReady: (model) {
        homeViewModel = model;
      },
    );
  }

  Widget get scaffoldBody => Scaffold(
        floatingActionButton: floatingActionButtonMethod,
        body: textMethod,
      );

  Widget get textMethod {
    return Observer(
        builder: (context) => Center(
              child: Text(homeViewModel.number.toString(),
                  style: TextStyle(
                    fontSize: 150,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ));
  }

  FloatingActionButton get floatingActionButtonMethod =>
      FloatingActionButton(onPressed: () => homeViewModel.incrementNumber());
}
