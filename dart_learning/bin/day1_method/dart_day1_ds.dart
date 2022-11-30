void main(List<String> arguments) {
  List<String> btsMembers = [
    "Jin",
    "Suga",
    "J-Hope",
    "RM",
    "Jimin",
    "V",
    "Jungkook"
  ];

  Map<String, String> idols = {
    "JYP": "TWICE",
    "Big Hit": "BTS",
    "YG": "BLACKPINK"
  };
  print(idols.keys);
  print(idols.values);
  print(idols["GDG"]);

  idols["Starship"] = "IVE";
  print(idols);

  final Set<String> blackPink = {"Jisoo", "Jennie", "Rose", "Lisa"};
  print(blackPink);
  blackPink.add("Jisoo");
  print(blackPink);
}
