class CategoryItem {
  final String title;
  final String imageUrl;
  final List<String> options;
  final bool hasDropdown;
  final bool expanded;
  CategoryItem({
    required this.title,
    required this.imageUrl,
    required this.options,
    this.hasDropdown = true,
    this.expanded = false,
  });
}