import 'package:flutter/material.dart';
import '../widgets/round_icon_button.dart';
import '../widgets/draggable_card.dart';

class SwipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.grey[200],
      body: DraggableCard(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.person_outline,
          size: 40.0,
          color: Colors.grey,
        ),
        onPressed: () {}
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.chat_bubble_outline,
            size: 40.0,
            color: Colors.grey,
          ),
          onPressed: () {}
        )
      ],
      title: Center(
        child: FlutterLogo(
          colors: Colors.red,
          size: 40.0,
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RoundIconButton.small(
              icon: Icons.refresh,
              iconColor: Colors.orange,
              onPressed: () {},
            ),
            RoundIconButton.large(
              icon: Icons.clear,
              iconColor: Colors.red,
              onPressed: () {},
            ),
            RoundIconButton.small(
              icon: Icons.star,
              iconColor: Colors.blue,
              onPressed: () {},
            ),
            RoundIconButton.large(
              icon: Icons.favorite,
              iconColor: Colors.green,
              onPressed: () {},
            ),
            RoundIconButton.small(
              icon: Icons.lock,
              iconColor: Colors.purple,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}