//constraints: in Container
//A constraint is just a property specifying the size or space a widget can take up

class AppConstraints {
  static get BoxConstraints => BoxConstraints(
      maxHeight: 300.0, maxWidth: 200.0, minWidth: 150.0, minHeight: 150.0);

  static get BoxExpaned => BoxConstraints
      .expand(); //If we need to expand our container to the maximum size even if it has a child we can use the BoxConstraints.expand()

  static get BoxExpanedFixSize =>
      BoxConstraints.expand(width: 350.0, height: 400.0);
}
