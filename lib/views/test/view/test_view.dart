//          Code with 🥂
//  ┌─────────────────────────────────┐
//  │     Created by Tuna UNSAL       │
//  │ ─────────────────────────────── │
//  │ tunahan.unsal@eczacibasi.com.tr │            
//  │ ─────────────────────────────── │
//  │        23.06.2022  16:29        │
//  └─────────────────────────────────┘

import 'package:flutter/material.dart';
import '../../../core/base/state/base_state.dart';
import '../../../core/base/view/base_view.dart';
import '../view-model/test_view_model.dart';


class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  TestViewModel testViewModel = TestViewModel();

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
            viewModel: testViewModel,
            onPageBuilder: ((buildContext, value) => scaffoldMethod),
            onModelReady: () {});
  }

  Scaffold get scaffoldMethod => Scaffold(
    body: Center(child: Text("Test",style : TextStyle(color: Colors.white),)),
  );
}

