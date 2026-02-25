import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ishowrunes/morf/controllers/input_controller.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:ishowrunes/widgets/text_field/decor_mixin.dart';

class RuneTextField extends StatefulWidget {
  const RuneTextField({
    super.key,
    required this.controller,
    this.decoration,
    this.inputFormatters,
    this.obscureText = false,
    this.obscuringCharacter = '*',
    this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.autofillHints = const [],
    this.onTap,
    this.readOnly = false,
    this.requestFocus = false,
    this.enabled,
    this.textInputAction,
    this.contentPadding,
    this.minLines,
    this.maxLines,
    this.maxLength,
  });

  final InputController controller;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  final TextInputType? inputType;
  final bool obscureText;
  final String obscuringCharacter;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<String> autofillHints;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool requestFocus;
  final bool? enabled;
  final TextInputAction? textInputAction;

  final EdgeInsets? contentPadding;

  final int? minLines;
  final int? maxLines;
  final int? maxLength;

  @override
  State<RuneTextField> createState() => _RuneTextFieldState();
}

class _RuneTextFieldState extends State<RuneTextField> with DecorMixin {
  late TextEditingController _textEditingController;
  late FocusNode? node;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.text = widget.controller.value ?? '';

    widget.controller.addListener(_syncFromInputController);
    if (widget.requestFocus) {
      node = FocusNode();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        node!.requestFocus();
      });
    } else {
      node = null;
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_syncFromInputController);
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultDecoration = getDecoration(
      context,
      widget.controller,
      widget.contentPadding,
    );
    final mergedDecoration = widget.decoration == null
        ? defaultDecoration
        : mergeDecoration(
            defaultDecoration,
            widget.decoration!,
          );

    return ListenableBuilder(
      listenable: widget.controller,
      builder: (context, _) {
        return TextField(
          focusNode: node,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          controller: _textEditingController,
          onChanged: widget.controller.onChanged,
          obscureText: widget.obscureText,
          obscuringCharacter: widget.obscuringCharacter,
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.inputType,
          autofillHints: widget.autofillHints,
          onTap: widget.onTap,
          textInputAction: widget.textInputAction,
          onSubmitted: widget.controller.onSubmitted,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          decoration: resolveDecoration(
            context.color,
            mergedDecoration,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            errorText: widget.controller.error,
          ),
        );
      },
    );
  }

  void _syncFromInputController() {
    final newValue = widget.controller.value ?? '';
    final oldValue = _textEditingController.text;

    if (oldValue != newValue) {
      // Preserve cursor if editing
      final oldSelection = _textEditingController.selection;
      _textEditingController.value = TextEditingValue(
        text: newValue,
        selection: oldSelection,
        composing: TextRange.empty,
      );
    }
  }
}
