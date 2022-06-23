//          Code with 🥂
//  ┌─────────────────────────────────┐
//  │     Created by Tuna UNSAL       │
//  │ ─────────────────────────────── │
//  │ tunahan.unsal@eczacibasi.com.tr │            
//  │ ─────────────────────────────── │
//  │        23.06.2022  16:29        │
//  └─────────────────────────────────┘

import 'package:flutter/material.dart';
import 'package:vitra_smart_remote/core/base/state/base_state.dart';
import 'package:vitra_smart_remote/core/base/view/base_view.dart';
import 'package:vitra_smart_remote/views/test/view-model/test_view_model.dart';


class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel testViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onPageBuilder: ((buildContext, value) => scaffoldMethod),
        onModelReady: (model) {
          testViewModel = model;
        });
  }

  Scaffold get scaffoldMethod => Scaffold(
    body: Center(child: Text("Test",style : TextStyle(color: Colors.white),)),
  );
}

