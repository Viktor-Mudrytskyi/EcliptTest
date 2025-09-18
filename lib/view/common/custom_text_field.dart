import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/app_svg_icon.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.initialText,
    this.onChanged,
    this.toggleVisibility = false,
  });

  final AlignmentGeometry? alignment;

  final double? width;

  final BoxDecoration? boxDecoration;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final bool? readOnly;

  final VoidCallback? onTap;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsetsGeometry? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final String? initialText;

  final ValueChanged<String>? onChanged;

  final bool toggleVisibility;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    if (!widget.toggleVisibility) {
      _obscureText = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.maxFinite,
      decoration: widget.boxDecoration,
      child: TextFormField(
        cursorColor: AppColors.appBlack,
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        onChanged: widget.onChanged,
        controller: widget.controller,
        focusNode: widget.focusNode,
        onTapOutside: (event) {
          if (widget.focusNode != null) {
            widget.focusNode?.unfocus();
          } else {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        autofocus: widget.autofocus!,
        style:
            widget.textStyle ??
            AppTextStyles.base.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
        obscureText: widget.obscureText! || _obscureText,
        readOnly: widget.readOnly!,
        onTap: () {
          widget.onTap?.call();
        },
        initialValue: widget.initialText,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        maxLines: widget.maxLines ?? 1,
        decoration: InputDecoration(
          hintText: widget.hintText ?? '',
          hintStyle:
              widget.hintStyle ??
              AppTextStyles.base.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.appHint,
              ),
          prefixIcon: widget.prefix,
          prefixIconConstraints: widget.prefixConstraints,
          suffixIcon: widget.toggleVisibility
              ? IconButton(
                  icon: AppSvgIcon(
                    assetPath: AppIcons.eye,
                    color: _obscureText ? AppColors.appGrey : AppColors.appHint,
                    height: 20,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : widget.suffix,
          suffixIconConstraints: widget.suffixConstraints,
          isDense: true,
          contentPadding:
              widget.contentPadding ??
              const EdgeInsetsDirectional.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
          fillColor: widget.fillColor ?? AppColors.white2,
          filled: widget.filled,
          border:
              widget.borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ).copyWith(borderSide: BorderSide(color: AppColors.appGrey)),
          enabledBorder:
              widget.borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ).copyWith(borderSide: BorderSide(color: AppColors.appGrey)),
          focusedBorder:
              (widget.borderDecoration ??
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))
                  .copyWith(borderSide: BorderSide(color: AppColors.appBlack)),
        ),
        validator: widget.validator,
        inputFormatters: [LengthLimitingTextInputFormatter(1500)],
      ),
    );
  }
}
