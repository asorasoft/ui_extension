import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension XWidget on Widget {
  Widget get sliver => SliverToBoxAdapter(
        child: this,
      );

  Widget tooltip(String message) {
    return Tooltip(
      message: message,
      child: this,
    );
  }

  Widget get expanded {
    return Expanded(
      child: this,
    );
  }

  Widget get center {
    return Center(
      child: this,
    );
  }

  Widget get toLeft {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget get toRight {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Widget get toTop {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Widget get toBottom {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Widget scale(
    double factor, {
    Key? key,
    Offset? origin,
    Alignment alignment = Alignment.center,
    bool transformHitTests = true,
  }) {
    return Transform.scale(
      scale: factor,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: this,
    );
  }

  Widget move(
    Offset offset, {
    Key? key,
    bool transformHitTests = true,
  }) {
    return Transform.translate(
      key: key,
      transformHitTests: transformHitTests,
      offset: offset,
      child: this,
    );
  }

  Widget rotate(
    double angle, {
    Key? key,
    Offset? origin,
    Alignment alignment = Alignment.center,
    bool transformHitTests = true,
  }) {
    return Transform.rotate(
      key: key,
      angle: angle,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: this,
    );
  }

  Widget loading({
    required ValueListenable<bool> loadingListenable,
    Widget? loadingWidget,
  }) {
    return Stack(
      children: [
        this,
        Positioned.fill(
          child: ValueListenableBuilder(
            valueListenable: loadingListenable,
            builder: (context, bool isLoading, _) {
              if (isLoading) {
                return loadingWidget ??
                    Material(
                      color: Colors.black.withOpacity(0.2),
                      child: CircularProgressIndicator().center,
                    );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }

  Widget stackInkWell({
    Key? key,
    Widget? child,
    GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    GestureTapDownCallback? onTapDown,
    GestureTapCancelCallback? onTapCancel,
    ValueChanged<bool>? onHighlightChanged,
    ValueChanged<bool>? onHover,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    MaterialStateProperty<Color?>? overlayColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        this,
        Positioned.fill(
          child: Material(
          	color: Colors.transparent,
          	borderRadius: borderRadius,
          	child: InkWell(
              key: key,
              child: child,
              onTap: onTap,
              onDoubleTap: onDoubleTap,
              onLongPress: onLongPress,
              onTapDown: onTapDown,
              onTapCancel: onTapCancel,
              onHighlightChanged: onHighlightChanged,
              onHover: onHover,
              mouseCursor: mouseCursor,
              focusColor: focusColor,
              hoverColor: hoverColor,
              highlightColor: highlightColor,
              overlayColor: overlayColor,
              splashColor: splashColor,
              splashFactory: splashFactory,
              radius: radius,
              borderRadius: borderRadius,
              customBorder: customBorder,
              enableFeedback: enableFeedback ?? true,
              excludeFromSemantics: excludeFromSemantics,
              focusNode: focusNode,
              canRequestFocus: canRequestFocus,
              onFocusChange: onFocusChange,
              autofocus: autofocus,
            ),
          ),
        ),
      ],
    );
  }
}
