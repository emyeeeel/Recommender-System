import 'package:flutter/material.dart';

class CustomCheckboxListTile extends StatefulWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckboxListTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxListTileState createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.onChanged(!widget.value);
          },
          child: Container(
            width: 20, 
            height: 20, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: widget.value ? Colors.transparent : Colors.grey,
                width: 2,
              ),
              color: widget.value ? Colors.red : Colors.transparent, 
            ),
            child: widget.value
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15, 
                  )
                : null,
          ),
        ),
        const SizedBox(width: 8), 
        Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal,),),
      ],
    );
  }
}
