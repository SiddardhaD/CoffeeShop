import '../constants/exports.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hintText;
  dynamic validator;
  dynamic ontap;
  dynamic fillcolor;
  dynamic contentPadding;
  bool obscureText;
  bool readOnly;
  bool enabled;
  dynamic value;
  dynamic focusNode;
  int maxLines;
  dynamic onChanged;
  Widget? prefix;
  dynamic keyboardType;
  dynamic inputFormatters;
  dynamic maxLength;
  String label;
  TextStyle? hintStyle;
  TextStyle? textStyle;
  double? fontSize;
  FontWeight? fontWeight;

  final textColor;

  //keyboardType: TextInputType.datetime,

  Widget? suffix;
  CustomFormField(
      {Key? key,
      this.keyboardType,
      this.prefix,
      this.fillcolor,
      this.focusNode,
      required this.enabled,
      required this.maxLines,
      required this.obscureText,
      this.inputFormatters,
      this.suffix,
      this.textStyle,
      this.hintStyle,
      this.maxLength,
      this.value,
      this.onChanged,
      this.contentPadding,
      this.validator,
      this.ontap,
      required this.readOnly,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      required this.label,
      this.controller,
      required this.hintText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        // boxShadow: const [
        //   BoxShadow(
        //     color: Color(0x3FD3D1D8),
        //     blurRadius: 30,
        //     offset: Offset(15, 15),
        //     spreadRadius: 0,
        //   )
        // ]
        ),
    child: TextFormField(
      maxLength: maxLength,
      obscureText: obscureText,
      readOnly: readOnly,
      controller: controller,
      maxLines: maxLines,
      enabled: enabled,
      focusNode: focusNode,
      keyboardType: keyboardType,
      inputFormatters:inputFormatters,
      style:textStyle??
          TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: black),
      decoration: InputDecoration(
        focusColor: white,
        filled: true,
floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: contentPadding,
        // const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: black.withOpacity(0.2), width: 0),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: black.withOpacity(0.6), width: 0.5),
          borderRadius: BorderRadius.circular(10.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: black.withOpacity(0.6), width: 0.5),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: red.withOpacity(0.6), width: 0.5),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: red.withOpacity(0.6), width: 1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        fillColor: fillcolor,
        suffixIcon: suffix,
        prefixIcon: prefix,
        hintText: hintText,
        alignLabelWithHint: true,
        //make hint text
        hintStyle: hintStyle ??
            TextStyle(
              color: grey.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),

        //create lable
      ),
      validator: validator,
      onChanged: onChanged,
      onTap: ontap,
    ),
        );
  }
}