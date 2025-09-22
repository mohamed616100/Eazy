
class datalessons {
  final bool isSave;
  final bool isblock;
  final String title;
  final String description;
  final String? icon;
  final String? description2;
  final bool subScription;

  datalessons(
      {required this.isSave,
        required this.isblock,
        required this.title,
        required this.description,
        this.icon,
        this.description2,
        required this.subScription});
}
