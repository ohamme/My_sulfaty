import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/member.dart';
import '../providers/member_provider.dart';
import 'member_form_screen.dart';

class MemberListScreen extends StatefulWidget {
  final int salafiyaId;

  const MemberListScreen({
    super.key,
    required this.salafiyaId,
  });

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {

  @override
void initState() {
  super.initState();

  WidgetsBinding.instance.addPostFrameCallback((_) {

    if (!mounted) return;

    context
        .read<MemberProvider>()
        .loadMembers(widget.salafiyaId);

  });
}


  Future<void> _addMember() async {

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MemberFormScreen(
          salafiyaId: widget.salafiyaId,
        ),
      ),
    );


    if (!mounted) return;


    if (result == true) {
      context
          .read<MemberProvider>()
          .loadMembers(widget.salafiyaId);
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('المشتركون'),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _addMember,
        child: const Icon(Icons.add),
      ),


      body: Consumer<MemberProvider>(

        builder: (context, provider, child) {


          final members = provider.members;


          if (members.isEmpty) {

            return const Center(
              child: Text(
                'لا يوجد مشتركون',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );

          }



          return ListView.builder(

            padding: const EdgeInsets.all(12),

            itemCount: members.length,


            itemBuilder: (context, index) {

              final Member member = members[index];


              return Card(

                child: ListTile(

                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),


                  title: Text(
                    member.fullName,
                  ),


                  subtitle: Text(
                    member.phone ?? 'بدون رقم هاتف',
                  ),

                ),

              );

            },

          );


        },

      ),

    );

  }
}