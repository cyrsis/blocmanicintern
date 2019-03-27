import 'package:flutter/material.dart';
import '../images_source.dart';
import './photo_browser.dart';

class ProfileCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileCardState();
}

class ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 5.0,
            spreadRadius: 2.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Material(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              PhotoBrowser(
                photoList: ImagesSource.getImages(),
                visiblePhotoIndex: 0
              ),
              _buildProfileSynopsis()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSynopsis() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.8)
            ]
          )
        ),
        padding: EdgeInsets.all(24.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Sebastian Pagni', style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  Text('Description', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ],
              ),
            ),
            Icon(Icons.info, color: Colors.white,)
          ],
        )
      ),
    );
  }
}