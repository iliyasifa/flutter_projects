import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/adaptive_button.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx, {Key? key}) : super(key: key) {
    debugPrint('Contructor NewTransaction Widget');
  }

  @override
  // ignore: no_logic_in_create_state
  State<NewTransaction> createState() {
    debugPrint('createState NewTransaction Widget');
    return _NewTransactionState();
  }
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;

  _NewTransactionState() {
    debugPrint('Constructor NewTransaction State');
  }

  @override
  void initState() {
    debugPrint('initState()');
    super.initState();
  }

  @override
  void didUpdateWidget(NewTransaction oldWidget) {
    debugPrint('didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    debugPrint('dispose()');
    super.dispose();
  }

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null) {
      return;
    }
    bool isLoading = true;
    if (isLoading) {
      widget.addTx(
        enteredTitle,
        enteredAmount,
        _selectedDate,
      );
      // loader() => const CircularProgressIndicator();
    }
    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CupertinoTextField(),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                controller: _titleController,
                onSubmitted: (_) => _submitData(),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Amount',
                ),
                controller: _amountController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                onSubmitted: (_) => _submitData(),
              ),
              SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _selectedDate == null
                            ? 'No date chosen'
                            : 'Picked Date: ${DateFormat.yMEd().format(_selectedDate!)}',
                      ),
                    ),
                    AdaptiveButton(
                      text: 'choose',
                      handler: _presentDatePicker,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: _submitData,
                child: const Text('Add Transaction'),
              ),
              // Container(
              //   child: CircularProgressIndicator(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
