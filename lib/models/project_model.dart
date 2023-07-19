class ProjectModel {
  final String? githubLink;
  final String? websiteLink;
  final String? playstoreLink;
  final String title;
  final String description;
  final List<String> tools;
  final String id;
  final List<String> type;

  ProjectModel(
      {this.githubLink,
      this.websiteLink,
      this.playstoreLink,
      required this.title,
      required this.description,
      required this.tools,
      required this.id,
      required this.type});
}
