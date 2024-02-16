import 'package:flutter/material.dart';

/// 컴포넌트 단위의 로딩 위젯입니다.
/// 어느 패키지에서든 접근할 수 있습니다.
class CommonLoading extends StatelessWidget {
  const CommonLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog.fullscreen(
      backgroundColor: Colors.transparent,
      child: Center(
        child: SizedBox(
          width: 96,
          height: 96,
          child: CircularProgressIndicator(
            color: Color(0xFF6742DB),
            backgroundColor: Color(0xFFF1EEFC),
            strokeWidth: 16,
            strokeCap: StrokeCap.round,
          ),
        ),
      ),
    );
  }
}
