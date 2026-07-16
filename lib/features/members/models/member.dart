class Member {

  final int? id;

  final int salafiyaId;

  final String fullName;

  final String? phone;

  final String? notes;

  final bool isActive;

  final String createdAt;

  final String updatedAt;



  Member({

    this.id,

    required this.salafiyaId,

    required this.fullName,

    this.phone,

    this.notes,

    this.isActive = true,

    required this.createdAt,

    required this.updatedAt,

  });



  Map<String, dynamic> toMap() {

    return {

      'id': id,

      'salafiya_id': salafiyaId,

      'full_name': fullName,

      'phone': phone,

      'notes': notes,

      'is_active': isActive ? 1 : 0,

      'created_at': createdAt,

      'updated_at': updatedAt,

    };

  }



  factory Member.fromMap(Map<String, dynamic> map) {

    return Member(

      id: map['id'] as int?,

      salafiyaId: map['salafiya_id'] as int,

      fullName: map['full_name'] as String,

      phone: map['phone'] as String?,

      notes: map['notes'] as String?,

      isActive: map['is_active'] == 1,

      createdAt: map['created_at'] as String,

      updatedAt: map['updated_at'] as String,

    );

  }



  Member copyWith({

    int? id,

    int? salafiyaId,

    String? fullName,

    String? phone,

    String? notes,

    bool? isActive,

    String? createdAt,

    String? updatedAt,

  }) {

    return Member(

      id: id ?? this.id,

      salafiyaId: salafiyaId ?? this.salafiyaId,

      fullName: fullName ?? this.fullName,

      phone: phone ?? this.phone,

      notes: notes ?? this.notes,

      isActive: isActive ?? this.isActive,

      createdAt: createdAt ?? this.createdAt,

      updatedAt: updatedAt ?? this.updatedAt,

    );

  }

}