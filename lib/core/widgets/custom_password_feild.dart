import 'package:flutter/material.dart';

import '../styles/colors/app_colore.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.controller,
    required this.validator,
    this.hintText = 'Enter your password',
    this.labelText = 'Password',
    this.onChanged,
    this.focusNode,
  });

  final TextEditingController controller;
  final String? Function(String?) validator;
  final String hintText;
  final String labelText;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isPasswordVisible = false;
  final FocusNode _internalFocus = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    (widget.focusNode ?? _internalFocus).addListener(() {
      setState(() {
        _isFocused = (widget.focusNode ?? _internalFocus).hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _internalFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode ?? _internalFocus,
        obscureText: !isPasswordVisible,
        validator: widget.validator,
        keyboardType: TextInputType.visiblePassword,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: widget.onChanged,
        style: const TextStyle(color: Color(0xFF858383)),
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: _isFocused
              ? const Icon(Icons.lock, color: AppColors.primaryColor)
              : null,
          suffixIcon: IconButton(
            icon: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey.shade600,
            ),
            onPressed: () =>
                setState(() => isPasswordVisible = !isPasswordVisible),
          ),
        ),
      ),
    );
  }
}
