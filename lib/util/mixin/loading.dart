import 'package:extends_vs_mixin/widget/CommonLoading/index.dart';
import 'package:flutter/material.dart';

/// 로딩 위젯을 출력하기 위한 mixin class 입니다.
/// 생성자가 필요 없으며, 메서드만 가지고 있습니다.
mixin class LoadingMixin {
  void showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const CommonLoading(),
    );
  }
}
