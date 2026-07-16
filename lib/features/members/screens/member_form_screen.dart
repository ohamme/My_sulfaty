import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/member.dart';
import '../providers/member_provider.dart';

class MemberFormScreen extends StatefulWidget {
  final int salafiyaId;

  const MemberFormScreen({
    super.key,
    required this.salafiyaId,
  });

  @override
  State<MemberFormScreen> createState() => _MemberFormScreenState();
}

class _MemberFormScreenState extends State<MemberFormScreen> {

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _notesController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _notesController.dispose();

    super.dispose();
  }



  Future<void> _save() async {

    if (!_formKey.currentState!.validate()) {
      return;
    }


    final now = DateTime.now().toIso8601String();


    final member = Member(

      salafiyaId: widget.salafiyaId,

      fullName: _nameController.text.trim(),

      phone: _phoneController.text.trim().isEmpty
          ? null
          : _phoneController.text.trim(),

      notes: _notesController.text.trim().isEmpty
          ? null
          : _notesController.text.trim(),

      createdAt: now,

      updatedAt: now,

    );


    await context
        .read<MemberProvider>()
        .addMember(member);



    if (!mounted) return;


    ScaffoldMessenger.of(context).showSnackBar(

      const SnackBar(
        content: Text(
          'تم حفظ المشترك بنجاح',
        ),
      ),

    );


    Navigator.pop(context, true);

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'إضافة مشترك',
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.all(16),


        child: Form(

          key: _formKey,


          child: ListView(

            children: [


              TextFormField(

                controller: _nameController,

                decoration: const InputDecoration(

                  labelText: 'اسم المشترك',

                  border: OutlineInputBorder(),

                ),


                validator: (value) {

                  if (value == null || value.trim().isEmpty) {

                    return 'أدخل اسم المشترك';

                  }

                  return null;

                },

              ),



              const SizedBox(height:16),



              TextFormField(

                controller: _phoneController,

                keyboardType: TextInputType.phone,

                decoration: const InputDecoration(

                  labelText: 'رقم الهاتف',

                  border: OutlineInputBorder(),

                ),

              ),



              const SizedBox(height:16),



              TextFormField(

                controller: _notesController,

                maxLines: 3,

                decoration: const InputDecoration(

                  labelText: 'ملاحظات',

                  border: OutlineInputBorder(),

                ),

              ),



              const SizedBox(height:30),



              FilledButton.icon(

                onPressed: _save,

                icon: const Icon(Icons.save),

                label: const Text(
                  'حفظ',
                ),

              ),


            ],

          ),

        ),

      ),

    );

  }
}