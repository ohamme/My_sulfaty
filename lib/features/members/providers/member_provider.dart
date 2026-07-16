import 'package:flutter/material.dart';

import '../models/member.dart';
import '../repositories/member_repository.dart';


class MemberProvider extends ChangeNotifier {

  final MemberRepository _repository = MemberRepository();


  List<Member> _members = [];


  List<Member> get members => _members;



  Future<void> loadMembers(int salafiyaId) async {

    _members = await _repository.getBySalafiya(salafiyaId);

    notifyListeners();

  }



  Future<void> addMember(Member member) async {

    await _repository.insert(member);

    await loadMembers(member.salafiyaId);

  }



  Future<void> updateMember(Member member) async {

    await _repository.update(member);

    await loadMembers(member.salafiyaId);

  }



  Future<void> deleteMember(
      int id,
      int salafiyaId,
  ) async {

    await _repository.delete(id);

    await loadMembers(salafiyaId);

  }



  void clear() {

    _members = [];

    notifyListeners();

  }

}