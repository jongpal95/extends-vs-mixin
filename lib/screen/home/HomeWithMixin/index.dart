import 'package:extends_vs_mixin/util/mixin/loading.dart';
import 'package:flutter/material.dart';

/// 첫 시작화면 입니다.
///
/// basescreen을 상속 받지 않았습니다.
/// 해당 스크린은 basescreen의 메서드를 사용할 수 없지만
/// loading mixin class의 메서드를 사용할 수 있습니다.
class HomeScreen extends StatelessWidget with LoadingMixin {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FilledButton(
              onPressed: () => super.showLoading(context),
              child: const Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}
