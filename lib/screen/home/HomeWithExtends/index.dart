import 'package:extends_vs_mixin/screen/base/BaseLayout/index.dart';
import 'package:flutter/material.dart';

/// 첫 시작화면 입니다.
///
/// basescreen을 상속 받아 인스턴스가 생성됩니다.
/// 해당 스크린은 basescreen의 메서드를 사용할 수 있으면서
/// 동시에 state를 가지는 클래스입니다.
class HomeScreen extends BaseScreen {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              onPressed: () => widget.showLoading(context),
              child: const Text('button'),
            ),
          ),
        ],
      ),
    );
  }
}
