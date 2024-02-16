import 'package:extends_vs_mixin/util/api/delay.dart';
import 'package:extends_vs_mixin/util/mixin/loading.dart';
import 'package:flutter/material.dart';

/// 첫 시작화면 입니다.
///
/// basescreen을 상속 받지 않았습니다.
/// 해당 스크린은 basescreen의 메서드를 사용할 수 없지만
/// loading mixin class의 메서드를 사용할 수 있습니다.
class HomeMixinScreen extends StatelessWidget with LoadingMixin {
  const HomeMixinScreen({super.key});

  void getValue(BuildContext context) async {
    super.showLoading(context);
    bool result = await callAPI();

    /// async 메서드 내에서 context를 위치 시키는 것은 dart 권장사항이 아닙니다.
    /// 참고 [https://seorenn.github.io/note/flutter-buildcontext-in-async-func.html]
    if (result) {
      if (!context.mounted) {
        return;
      }

      hideLoading(context);
    }
  }

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
              onPressed: () => getValue(context),
              child: const Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}
