class ProjectManagement {
  String name;
  String holder;
  String sector;
  String status;
  double probability = 1.0;
  double criticality = 1.0;
  String? numberOfImpactedPeople;
  double? riskLevel;

  ProjectManagement({
    required this.name,
    required this.holder,
    required this.sector,
    required this.status,
    required this.probability,
    required this.criticality,
    this.numberOfImpactedPeople,
    this.riskLevel,
  });
}
