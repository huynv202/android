import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final TrackingScrollController scrollController;

  const Header(this.scrollController);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  late Color _backgroundColor;
  late Color _backgroundColorSearch;
  late Color _backgroundColorIcon;
  late double _opacity;
  late double _offset;

  final _opacityMax = 0.1;

  @override
  void initState() {
     _backgroundColor= Colors.transparent;
     _backgroundColorSearch=Colors.white;
     _backgroundColorIcon = Colors.white;
     _opacity=0.0;
     _offset =0.0;

     widget.scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildInputSearch(),
              SizedBox(
                width: 8,
              ),
              _buildIconButton(
                onPressed: () => print("click!!"),
                icon: Icons.shopping_cart,
                notification: 22,
              ),
              _buildIconButton(
                onPressed: () => print("click!!"),
                icon: Icons.chat,
                notification: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildInputSearch() {
    final sizeIcon = BoxConstraints(minWidth: 40, minHeight: 40);

    final border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
    );
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          isDense: true,
          enabledBorder: border,
          focusedBorder: border,
          hintText: 'Shoppe',
          hintStyle: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
          ),
          prefixIcon: Icon(Icons.search),
          prefixIconConstraints: sizeIcon,
          suffixIcon: Icon(Icons.camera_alt),
          suffixIconConstraints: sizeIcon,
          filled: true,
          fillColor: _backgroundColorSearch,
        ),
      ),
    );
  }

  _buildIconButton(
          {required VoidCallback onPressed,
          required IconData icon,
          int notification = 0}) =>
      Stack(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            color: _backgroundColorIcon,
          ),
          if (notification > 0)
            Positioned(
              top: 4,
              right: 5,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: Text(
                  '$notification',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      );

  void _onScroll() {
  final scrollOffset = widget.scrollController.offset;
  if(scrollOffset  >= _offset && scrollOffset>5){
    _opacity= double.parse((_opacity+_opacityMax).toStringAsFixed(2));
    if(_opacity>=1.0){
      _opacity=1.0;
    }
  }else if(scrollOffset  < 100){
    _opacity= double.parse((_opacity-_opacityMax).toStringAsFixed(2));
    if(_opacity<=1.0){
      _opacity=0.0;
    }
  }
  setState(() {
 if(scrollOffset<=0){
   // _backgroundColor= Colors.transparent;
   _backgroundColorSearch=Colors.white;
   _backgroundColorIcon = Colors.white;
   _offset=0.0;
   _opacity=0.0;
  }else{
   _backgroundColorSearch =Colors.grey.shade200;
   _backgroundColorIcon = Colors.deepOrange;
 }
 _backgroundColor= Colors.white.withOpacity(_opacity);
  });
  }
}
