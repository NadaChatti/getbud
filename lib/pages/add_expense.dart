import 'package:flutter/material.dart';
import 'package:getbud/common_widgets/layout.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: "Add expense",
      child: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < 3) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
          controlsBuilder: (BuildContext context, ControlsDetails details) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // "Previous" Button
        if (_currentStep > 0)
          ElevatedButton(
            onPressed: details.onStepCancel,
            child: const Text('Previous'),
          ),
        // "Next" Button
        ElevatedButton(
          onPressed: details.onStepContinue,
          child: const Text('Next'),
        ),
      ],
    );
  },
        steps: [
          // Step 1: Amount
          Step(
            title: const Text('Amount'),
            content: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [],
            ),
            isActive: _currentStep == 0,
          ),
          // Step 2: Payment Frequency
          Step(
            title: const Text('Payment Frequency'),
            content: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select Frequency',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'One-Time', child: Text('One-Time')),
                DropdownMenuItem(value: 'Weekly', child: Text('Weekly')),
                DropdownMenuItem(value: 'Monthly', child: Text('Monthly')),
                DropdownMenuItem(value: 'Yearly', child: Text('Yearly')),
              ],
              onChanged: (value) {},
            ),
            isActive: _currentStep == 1,
          ),
          // Step 3: Category and Subcategory
          Step(
            title: const Text('Category & Subcategory'),
            content: Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Select Category',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Food', child: Text('Food')),
                    DropdownMenuItem(value: 'Transport', child: Text('Transport')),
                    DropdownMenuItem(value: 'Shopping', child: Text('Shopping')),
                  ],
                  onChanged: (value) {},
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Select Subcategory',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Groceries', child: Text('Groceries')),
                    DropdownMenuItem(value: 'Dining', child: Text('Dining')),
                    DropdownMenuItem(value: 'Clothing', child: Text('Clothing')),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
            isActive: _currentStep == 2,
          ),
          // Step 4: More Details
          Step(
            title: const Text('More Details'),
            content: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            isActive: _currentStep == 3,
          ),
        ],
      ),
    );
  }
}