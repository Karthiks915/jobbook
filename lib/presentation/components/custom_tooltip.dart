import 'package:flutter/material.dart';

enum TooltipVerticalPosition { top, bottom }

enum TooltipHorizontalPosition { left, right, center, with_widget }

// When icon is clicked again remove it

void showCustomTooltip({
  required BuildContext context,
  required GlobalKey parentKey,
  required String tooltipText,
  String? imageWidget,
  TooltipVerticalPosition tooltipVerticalPosition =
      TooltipVerticalPosition.bottom,
  TooltipHorizontalPosition tooltipHorizontalPosition =
      TooltipHorizontalPosition.with_widget,
}) {
  final RenderBox renderBox =
      parentKey.currentContext!.findRenderObject() as RenderBox;
  final parentSize = renderBox.size;
  final parentOffset = renderBox.localToGlobal(Offset.zero);

  double top;
  double left;

  OverlayEntry? overlayEntry;

  switch (tooltipVerticalPosition) {
    case TooltipVerticalPosition.top:
      if (imageWidget == null) {
        top = parentOffset.dy - 200;
      } else {
        top = parentOffset.dy - 380;
      }
      break;
    case TooltipVerticalPosition.bottom:
      top = parentOffset.dy;
      break;
  }

  switch (tooltipHorizontalPosition) {
    case TooltipHorizontalPosition.left:
      left = parentOffset.dx - parentSize.width;
      break;
    case TooltipHorizontalPosition.right:
      left = parentOffset.dx + parentSize.width;
      break;
    case TooltipHorizontalPosition.center:
      if (imageWidget == null) {
        left = parentOffset.dx + 600;
      } else {
        left = parentOffset.dx + parentSize.width / 1.5;
      }

      break;
    case TooltipHorizontalPosition.with_widget:
      if (imageWidget == null) {
        left = parentOffset.dx - 180;
      } else {
        left = parentOffset.dx - 260;
      }
  }

  overlayEntry = OverlayEntry(
    builder: (context) {
      return Stack(
        children: [
          Positioned(
            top: top,
            left: left,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return FadeTransition(
                  opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                      parent: AnimationController(
                        vsync: Scaffold.of(context),
                        duration: const Duration(milliseconds: 300),
                      )..forward(),
                      curve: Curves.easeIn,
                    ),
                  ),
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: imageWidget == null ? 300 : 450,
                      constraints: const BoxConstraints(
                        maxWidth: 450,
                      ),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(tooltipText),
                          const SizedBox(height: 10),
                          if (imageWidget != null)
                            Image.network(
                              imageWidget,
                              width: 400,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  overlayEntry?.remove();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple[400],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                                child: const Text('Done',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    },
  );

  Overlay.of(context).insert(overlayEntry);
}
