import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<bool> onFocusChanged;

  const MySearchBar({
    super.key,
    required this.onChanged,
    required this.onFocusChanged,
  });

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      widget.onFocusChanged(_focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 0, 24.0, 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // Fokuskan dan paksa masuk mode search
            FocusScope.of(context).requestFocus(_focusNode);
            widget.onFocusChanged(true); // Paksa ke search mode
          },
          child: AbsorbPointer(
            child: TextField(
              focusNode: _focusNode,
              onChanged: widget.onChanged,
              decoration: const InputDecoration(
                hintText: 'Cari',
                prefixIcon: Icon(Icons.search_rounded, size: 32),
                filled: true,
                fillColor: Colors.transparent,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
