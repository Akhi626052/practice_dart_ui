Future<void> insertUser(String name, int age) async {
  final db = await database;

  await db.insert(
    'users',
    {
      'name': name,
      'age': age,
    },
  );
}