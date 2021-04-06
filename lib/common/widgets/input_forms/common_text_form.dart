import 'package:flutter/material.dart';

@immutable
class CommonTextForm extends StatefulWidget {
  CommonTextForm({Key? key, required this.textEditingController, this.labelText = 'label',
    this.obscureText = false, this.height = 50, this.width = 250}) : super(key: key);
  @override
  State<CommonTextForm> createState() => _CommonTextFormState();

  final double height;
  final double width;
  final String labelText;
  final TextEditingController textEditingController;
  final bool obscureText;
}

class _CommonTextFormState extends State<CommonTextForm> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: widget.labelText
        ),
        controller: widget.textEditingController,
        obscureText: widget.obscureText,
      ),
    );
  }
}
