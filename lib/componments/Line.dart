import 'package:flutter/material.dart';

/// A one line button componment
class LineButton extends StatelessWidget {
  final Widget innerWidget;
  final GestureTapCallback onTap;
  final bool isBtn;
  final Color backgroundColor;
  final bool borderAfter;

  /// Default init funtion
  ///
  /// @param innerWidget is the child componment for this view
  /// @param onTap if [isBtn == true] the onTap will get the btn tap event
  /// @param backgroundColor is the background-color for the view
  LineButton(
      {this.innerWidget,
      this.onTap,
      this.isBtn = false,
      this.backgroundColor = Colors.white,
      this.borderAfter = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
          color: backgroundColor,
          child: isBtn
              ? InkWell(
                  child: Container(
                    child: innerWidget,
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  ),
                  onTap: onTap,
                )
              : Container(
                  child: innerWidget,
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                ),
        ),
        decoration: borderAfter
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey[400], width: 0.5),
                ),
              )
            : null);
  }
}
