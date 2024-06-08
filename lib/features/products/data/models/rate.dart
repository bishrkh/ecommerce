class Rate {
  final double rate;
  final int count;
  Rate({
    required this.rate,
    required this.count,
  });

  factory Rate.fromMap(Map<String, dynamic> map) {
    return Rate(
      rate: map['rate'].toDouble(),
      count: map['count'] as int,
    );
  }
}
