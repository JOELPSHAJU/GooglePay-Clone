class User {
  final String name;
  final String imageUrl;
  final bool isOnline;
  final bool isMore;

  User(
      {required this.name,
      required this.imageUrl,
      this.isOnline = false,
      this.isMore = false});
}
