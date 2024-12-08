import 'package:flutter/material.dart';

class MoreBottomModal extends StatelessWidget {
  final VoidCallback cancelTap;
  const MoreBottomModal({super.key, required this.cancelTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.visibility_off_outlined),
                  title: Text('이 글 숨기기')),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('게시글 노출 기준')),
                ListTile(
                  leading: Icon(Icons.warning_amber_outlined, color: Colors.red),
                  title: Text('신고하기'),
                  textColor: Colors.red,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: const Text('닫기', textAlign: TextAlign.center),
              onTap: cancelTap),
          )
        ],
      ),
    );
  }
}
