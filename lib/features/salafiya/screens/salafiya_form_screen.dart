import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/salafiya.dart';
import '../providers/salafiya_provider.dart';

class SalafiyaFormScreen extends StatefulWidget {
  const SalafiyaFormScreen({super.key});

  @override
  State<SalafiyaFormScreen> createState() => _SalafiyaFormScreenState();
}

class _SalafiyaFormScreenState extends State<SalafiyaFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  final _membersController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    _membersController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final now = DateTime.now().toIso8601String();

    final salafiya = Salafiya(
      name: _nameController.text.trim(),
      amount: double.parse(_amountController.text),
      members: int.parse(_membersController.text),
      createdAt: now,
      updatedAt: now,
    );

    await context.read<SalafiyaProvider>().addSalafiya(salafiya);

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تم حفظ السلفة بنجاح'),
      ),
    );

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة سلفة'),
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
                  labelText: 'اسم السلفة',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'أدخل اسم السلفة';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'قيمة السلفة',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'أدخل قيمة السلفة';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _membersController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'عدد المشتركين',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'أدخل عدد المشتركين';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              FilledButton.icon(
                onPressed: _save,
                icon: const Icon(Icons.save),
                label: const Text('حفظ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}