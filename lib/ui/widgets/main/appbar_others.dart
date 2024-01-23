import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekOtherAppbar extends StatelessWidget {
  final String? title;

  const GojekOtherAppbar({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0.7,
      child: AppBar(
        toolbarHeight: 93 - MediaQuery.of(context).padding.top,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 16,
            left: 22,
            right: 22,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title!,
                style: GojekTypography.bold24.copyWith(
                  color: GojekColor.hex_1B1E1D,
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
