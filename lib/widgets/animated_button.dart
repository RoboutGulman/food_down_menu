import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final String initialText;
  final AnimatedButtonStyle buttonStyle;
  final IconData iconData;
  final double iconSize;
  final Duration animationDuration;

  const AnimatedButton({
    Key? key,
    required this.initialText,
    required this.iconData,
    required this.iconSize,
    required this.animationDuration,
    required this.buttonStyle,
  }) : super(key: key);

  @override
  AnimatedButtonState createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedButton>
    with TickerProviderStateMixin {
  bool isIconVisible = false;

  @override
  Widget build(BuildContext context) {
    final smallDuration = Duration(
        milliseconds: (widget.animationDuration.inMilliseconds * 0.2).round());
    return Material(
      elevation: widget.buttonStyle.elevation,
      child: InkWell(
        onTap: () {
          setState(() {
            isIconVisible = !isIconVisible;
          });
        },
        child: AnimatedContainer(
          duration: smallDuration,
          height: widget.iconSize + 16,
          decoration: BoxDecoration(
            color: (isIconVisible)
                ? widget.buttonStyle.secondaryColor
                : widget.buttonStyle.primaryColor,
            border: Border.all(
                color: (isIconVisible)
                    ? widget.buttonStyle.primaryColor
                    : Colors.transparent),
            borderRadius: BorderRadius.all(
                Radius.circular(widget.buttonStyle.borderRadius)),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: widget.iconSize - 5,
            vertical: widget.iconSize - 20,
          ),
          child: AnimatedSize(
            curve: Curves.easeIn,
            duration: smallDuration,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                (isIconVisible)
                    ? Icon(
                        widget.iconData,
                        size: widget.iconSize,
                        color: widget.buttonStyle.iconColor,
                      )
                    : Container(),
                SizedBox(
                  width: isIconVisible ? widget.iconSize - 15 : 0.0,
                ),
                Text(
                  widget.initialText,
                  style: (!isIconVisible)
                      ? widget.buttonStyle.initialTextStyle
                      : widget.buttonStyle.finalTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedButtonStyle {
  final TextStyle initialTextStyle, finalTextStyle;
  final Color primaryColor, secondaryColor, iconColor;
  final double elevation, borderRadius;

  AnimatedButtonStyle(
      {required this.primaryColor,
      required this.secondaryColor,
      required this.iconColor,
      required this.initialTextStyle,
      required this.finalTextStyle,
      required this.elevation,
      required this.borderRadius});
}
