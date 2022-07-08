import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../data/django_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: HomePageForm(),
      ),
    );
  }
}

class HomePageForm extends StatefulWidget {
  const HomePageForm({Key? key}) : super(key: key);

  @override
  State<HomePageForm> createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _injuryController = TextEditingController();
  final _dobController = TextEditingController();
  final _claimNumberController = TextEditingController();
  final _employerController = TextEditingController();
  DateTime? injuryDate;
  DateTime? dobDate;

  String? data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ColumnFormField(
                lable: 'Name',
                maxWidth: 400,
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ColumnDatePickerWidget(
                lable: 'Date of Injury',
                maxWidth: 400,
                controller: _injuryController,
                valueSetter: (date) {
                  injuryDate = date;
                },
              ),
              const SizedBox(height: 20),
              ColumnDatePickerWidget(
                lable: 'Date of Birth',
                maxWidth: 400,
                controller: _dobController,
                valueSetter: (date) {
                  dobDate = date;
                },
              ),
              const SizedBox(height: 20),
              ColumnFormField(
                  lable: 'Claim Number',
                  maxWidth: 400,
                  controller: _claimNumberController),
              const SizedBox(height: 20),
              ColumnFormField(
                lable: 'Employer',
                maxWidth: 400,
                controller: _employerController,
              ),
              const SizedBox(height: 20),
              Text(data ?? ''),
              const SizedBox(height: 20),
              Card(
                child: TextButton(
                  onPressed: () async {
                    if (_formKey.currentState?.validate() == true) {
                      final response = await connectToDjango(
                          _nameController.text,
                          injuryDate,
                          dobDate,
                          _claimNumberController.text,
                          _employerController.text);

                      setState(() {
                        data = response.toString();
                      });
                    }
                  },
                  child: const Text("Post Data to Django"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _injuryController.dispose();
    _dobController.dispose();
    _claimNumberController.dispose();
    _employerController.dispose();
    super.dispose();
  }
}
