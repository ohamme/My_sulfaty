class Salafiya {
  final int? id;
  final String name;
  final double amount;
  final int members;
  final String createdAt;
  final String updatedAt;

  const Salafiya({
    this.id,
    required this.name,
    required this.amount,
    required this.members,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'members': members,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  factory Salafiya.fromMap(Map<String, dynamic> map) {
    return Salafiya(
      id: map['id'] as int?,
      name: map['name'] as String,
      amount: (map['amount'] as num).toDouble(),
      members: map['members'] as int,
      createdAt: map['created_at'] as String,
      updatedAt: map['updated_at'] as String,
    );
  }

  Salafiya copyWith({
    int? id,
    String? name,
    double? amount,
    int? members,
    String? createdAt,
    String? updatedAt,
  }) {
    return Salafiya(
      id: id ?? this.id,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      members: members ?? this.members,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
