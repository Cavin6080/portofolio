class ButtonModel {
  String name;
  int id;
  int? activeId;
  bool isPressed;
  ButtonModel({
    required this.name,
    required this.id,
    required this.isPressed,
    this.activeId,
  });
}

List<ButtonModel> buttonList = [
  ButtonModel(id: 0, isPressed: false, name: 'ABOUT', activeId: 0),
  ButtonModel(id: 1, isPressed: false, name: 'PROJECTS'),
  ButtonModel(id: 2, isPressed: false, name: 'CONNECT'),
  // ButtonModel(id: 3, isPressed: false, name: 'JOIN OUR COMMUNITY'),
];
