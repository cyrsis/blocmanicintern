import 'package:flutter/material.dart';

class PhotoBrowser extends StatefulWidget {
  final List<String> photoList;
  final int visiblePhotoIndex;

  PhotoBrowser({this.photoList, this.visiblePhotoIndex});
  @override
  State<StatefulWidget> createState() => PhotoBrowserState();
}

class PhotoBrowserState extends State<PhotoBrowser> {
  int visiblePhotoIndex;

  @override
  void initState() {
    super.initState();
    //Tengo estado porque el index va a ir cambiando segun los taps del usuario.
    //Por lo tanto el componente se tiene que redibujar
    visiblePhotoIndex = widget.visiblePhotoIndex;
  }
  @override
  void didUpdateWidget(PhotoBrowser oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visiblePhotoIndex != oldWidget.visiblePhotoIndex) {
      setState(() {
        visiblePhotoIndex = widget.visiblePhotoIndex;
      });
    }
  }

  void _prevPhoto() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex > 0 ? visiblePhotoIndex-1 : 0;
    });
  }
  void _nextPhoto() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex < widget.photoList.length-1 
        ? visiblePhotoIndex + 1
        : visiblePhotoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        //Photo
        Image.network(widget.photoList[this.visiblePhotoIndex], fit: BoxFit.cover),
        //Photo Indicator
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: SelectedPhotoIndicator(
            photoCount: widget.photoList.length,
            visiblePhotoIndex: this.visiblePhotoIndex
          ),
        ),
        //Browser Controls
        _buildBrowserControls()
      ],
    );
  }

  Widget _buildBrowserControls() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        GestureDetector(
          onTap: _prevPhoto,
          child: FractionallySizedBox(
            widthFactor: 0.3,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: Container(color: Colors.transparent)
          ),
        ),
        GestureDetector(
          onTap: _nextPhoto,
          child: FractionallySizedBox(
            widthFactor: 0.7,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: Container(color: Colors.transparent)
          ),
        )
      ],
    );
  }
}

class SelectedPhotoIndicator extends StatelessWidget {
  final int photoCount;
  final int visiblePhotoIndex;

  SelectedPhotoIndicator({this.photoCount, this.visiblePhotoIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: _buildIndicators(),
      ),
    );
  }

  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < photoCount; ++i) {
      indicators.add(
        i == visiblePhotoIndex ? _buildIndicator(true) : _buildIndicator(false)
      );
    }
    return indicators;
  }

  Widget _buildIndicator(bool isActive) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.0),
        child: Container(
          height: 3.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.5),
            color: isActive ? Colors.white : Colors.black.withOpacity(0.2)
          ),
        ),
      ),
    );
  }
}