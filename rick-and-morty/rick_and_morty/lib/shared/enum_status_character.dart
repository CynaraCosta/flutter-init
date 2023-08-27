// ignore_for_file: sort_constructors_first

enum StatusCharacter {
  dead('dead'),
  alive('alive'),
  unknown('unknown');

  final String value;

  const StatusCharacter(this.value);

}
