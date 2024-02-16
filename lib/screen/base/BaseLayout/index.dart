import 'package:extends_vs_mixin/widget/CommonLoading/index.dart';
import 'package:flutter/material.dart';

/// base screen class 입니다.
///
/// statlesswidget을 상속 받을 경우 자식 클래스에서 상속이 제한되므로
/// 부모 클래스는 statefulewidget이 강제될 수 밖에 없을 것 같습니다.
class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  void showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const CommonLoading(),
    );
  }

  void hideLoading(BuildContext context) {
    Navigator.of(context).pop();
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
    );
  }

  /// 공통으로 사용하는 메서드를 베이스 클래스에서 구현하면 좋을 것 같습니다.
  /// ex. bottomSheet, alert 등

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.buildAppBar(context);
  }
}
