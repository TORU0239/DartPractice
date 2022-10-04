// The use of where()
void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': 'V',
      'group': 'BTS',
    },
  ];
  print(people);

  final blackPink = people.where((x) => x['group'] == '블랙핑크');
  print(blackPink);

  final bts = people.where((x) => x['group'] == 'BTS');
  print(bts);
}
