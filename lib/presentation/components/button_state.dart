import 'package:flutter/material.dart';

enum ButtonState { initial, loading, errored, success }

class StatefulButton extends StatelessWidget {
  final ButtonState state;
  final VoidCallback onPressed;
  final String label;

  const StatefulButton({
    Key? key,
    required this.state,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return ElevatedButton(
      onPressed: switch (state) {
        ButtonState.initial || ButtonState.errored => onPressed,
        ButtonState.loading || ButtonState.success => null,
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(40, 40),
      ),
      child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          child: switch (state) {
            ButtonState.initial =>
              Text(label, style: const TextStyle(fontSize: 18)),
            ButtonState.loading => const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ButtonState.errored => const Icon(Icons.error, size: 24),
            ButtonState.success => const Icon(Icons.check, size: 24)
          }),
    );
  }
}

