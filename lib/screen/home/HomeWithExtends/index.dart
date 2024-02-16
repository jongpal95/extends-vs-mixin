import 'package:extends_vs_mixin/screen/base/BaseLayout/index.dart';
import 'package:extends_vs_mixin/util/api/delay.dart';
import 'package:flutter/material.dart';

/// 첫 시작화면 입니다.
///
/// basescreen을 상속 받아 인스턴스가 생성됩니다.
/// 해당 스크린은 basescreen의 메서드를 사용할 수 있으면서
/// 동시에 state를 가지는 클래스입니다.
class HomeExtendScreen extends BaseScreen {
  const HomeExtendScreen({super.key});

  @override
  State<HomeExtendScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeExtendScreen> {
  void getValue() async {
    widget.showLoading(context);

    bool result = await callAPI();

    if (result) {
      hideLoading();
    }
  }

  /// async 메서드 내에서 await실행 이후 context를 위치 시키는 것은
  /// flutter 권장사항이 아니라서 분리했습니다.
  /// 더 좋은 구조로 가져갈 수 있을 것 같습니다.
  void hideLoading() {
    widget.hideLoading(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.buildAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FilledButton(
              onPressed: getValue,
              child: const Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}
