import 'package:flutter/material.dart';

class input_kegiatananak extends StatefulWidget {
  @override
  _input_kegiatananak createState() => _input_kegiatananak();
}

class _input_kegiatananak extends State<input_kegiatananak> {
  final _formKey = GlobalKey<FormState>();
  String breakfastSelection = 'None';
  bool snackNone = false;
  bool snackSome = false;
  bool snackLots = false;
  bool lunchNone = false;
  bool lunchSome = false;
  bool lunchLots = false;
  bool dinnerNone = false;
  bool dinnerSome = false;
  bool dinnerLots = false;
  bool fluidsNone = false;
  bool fluidsSome = false;
  bool fluidsLots = false;
  bool otherChecked = false;
  bool toiletDiaper = true;
  bool toiletPotty = false;
  bool toiletWet = true;
  bool toiletBm = false;
  bool toiletDry = false;
  bool bottleMilk = true;
  bool bottleFormula = false;
  bool bottleBreast = false;
  bool showerAfternoon = true;
  bool needClothes = true;

  final _snackController = TextEditingController();
  final _lunchController = TextEditingController();
  final _dinnerController = TextEditingController();
  final _fluidsController = TextEditingController();
  final _otherController = TextEditingController();
  final _toiletTimeController = TextEditingController();
  final _bottleTimeController = TextEditingController();
  final _bottleMlController = TextEditingController();
  final _notesController = TextEditingController();
  final _showerController = TextEditingController();
  final _afternoonController = TextEditingController();
  final _restController     = TextEditingController();
  final _startController  = TextEditingController();

  void _submitInfo() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Information Submitted'),
            content: Text('Data kegiatan anak telah berhasil dikirim!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Tutup dialog
                  Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _snackController.dispose();
    _lunchController.dispose();
    _dinnerController.dispose();
    _fluidsController.dispose();
    _otherController.dispose();
    _toiletTimeController.dispose();
    _bottleTimeController.dispose();
    _bottleMlController.dispose();
    _notesController.dispose();
    _showerController.dispose();
    _afternoonController.dispose();
    _restController.dispose();
    _startController.dispose();
    super.dispose();
  }

  void _handleBreakfastSelection(String? value) {
    setState(() {
      breakfastSelection = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Kegiatan Anak'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: const Color.fromARGB(255, 253, 253, 253),
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('BREAKFAST:', style: TextStyle(fontWeight: FontWeight.bold)),
                RadioListTile<String>(
                  title: Text('None'),
                  value: 'None',
                  groupValue: breakfastSelection,
                  onChanged: _handleBreakfastSelection,
                ),
                RadioListTile<String>(
                  title: Text('Some'),
                  value: 'Some',
                  groupValue: breakfastSelection,
                  onChanged: _handleBreakfastSelection,
                ),
                RadioListTile<String>(
                  title: Text('Lots'),
                  value: 'Lots',
                  groupValue: breakfastSelection,
                  onChanged: _handleBreakfastSelection,
                ),
                // Section Snack
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _snackController,
                        decoration: InputDecoration(
                          labelText: 'SNACK',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'SNACK harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: Text('None'),
                  value: snackNone,
                  onChanged: (bool? value) {
                    setState(() {
                      snackNone = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Some'),
                  value: snackSome,
                  onChanged: (bool? value) {
                    setState(() {
                      snackSome = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Lots'),
                  value: snackLots,
                  onChanged: (bool? value) {
                    setState(() {
                      snackLots = value!;
                    });
                  },
                ),
                // Section Lunch
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _lunchController,
                        decoration: InputDecoration(
                          labelText: 'LUNCH',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Lunch harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
               
               CheckboxListTile(
                  title: Text('None'),
                  value: lunchNone,
                  onChanged: (bool? value) {
                    setState(() {
                      lunchNone = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: Text('Some'),
                  value: lunchSome,
                  onChanged: (bool? value) {
                    setState(() {
                      lunchSome = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Lots'),
                  value: lunchLots,
                  onChanged: (bool? value) {
                    setState(() {
                      lunchLots = value!;
                    });
                  },
                ),
               
                // Section Dinner
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _dinnerController,
                        decoration: InputDecoration(
                          labelText: 'DINNER',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'DINNER harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),

                 CheckboxListTile(
                  title: Text('None'),
                  value: dinnerNone,
                  onChanged: (bool? value) {
                    setState(() {
                      dinnerNone = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: Text('Some'),
                  value: dinnerSome,
                  onChanged: (bool? value) {
                    setState(() {
                     dinnerSome = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Lots'),
                  value: dinnerLots,
                  onChanged: (bool? value) {
                    setState(() {
                      dinnerLots = value!;
                    });
                  },
                ),

                // Section Fluids
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _fluidsController,
                        decoration: InputDecoration(
                          labelText: 'FLUIDS',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'FLUIDS harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: Text('Some'),
                  value: fluidsSome,
                  onChanged: (bool? value) {
                    setState(() {
                      fluidsSome = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Lots'),
                  value: fluidsLots,
                  onChanged: (bool? value) {
                    setState(() {
                      fluidsLots = value!;
                    });
                  },
                ),
                // Section Other
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _otherController,
                        decoration: InputDecoration(
                          labelText: 'OTHER:',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'OTHER harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),


               //Section Rest
               SizedBox(height: 50),
                Container(
              color: Colors.green, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'REST:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _startController,
                    decoration: InputDecoration(
                      labelText: 'START:',
                      labelStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), 
                    ),
                  ),
                  TextFormField(
                    controller: _restController,
                    decoration: InputDecoration(
                      labelText: 'REST:',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 18, 39, 18)), 
                    ),
                  ),
                ],
              ),
            ),
               
               
               
               
               
               
               
               
               
                //Section other
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _toiletTimeController,
                        decoration: InputDecoration(
                          labelText: 'TOILET',
                          fillColor: _toiletTimeController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'OTHER harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: Text('Diaper'),
                  value: toiletDiaper,
                  onChanged: (bool? value) {
                    setState(() {
                      toiletDiaper = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Potty'),
                  value: toiletPotty,
                  onChanged: (bool? value) {
                    setState(() {
                      toiletPotty = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Wet'),
                  value: toiletWet,
                  onChanged: (bool? value) {
                    setState(() {
                      toiletWet = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Dry'),
                  value: toiletDry,
                  onChanged: (bool? value) {
                    setState(() {
                      toiletDry = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Bm'),
                  value: toiletBm,
                  onChanged: (bool? value) {
                    setState(() {
                      toiletBm = value!;
                    });
                  },
                ),
                //Section Bottle
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller:  _bottleTimeController,
                        decoration: InputDecoration(
                          labelText: 'BOTTLE:',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'BOTTLE harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _bottleMlController ,
                        decoration: InputDecoration(
                          labelText: 'ML:',
                          fillColor: _snackController.text.isEmpty
                              ? Color.fromARGB(255, 93, 192, 89)
                              : Color.fromARGB(255, 0, 0, 0),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'ML harus diisi';
                          }
                          return null;
                        },
                        style: TextStyle(color: const Color.fromARGB(255, 11, 14, 11)),
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  title: Text('Formula'),
                  value: bottleFormula,
                  onChanged: (bool? value) {
                    setState(() {
                      bottleFormula = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Breast'),
                  value: bottleBreast,
                  onChanged: (bool? value) {
                    setState(() {
                      bottleBreast = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Milk'),
                  value: bottleMilk,
                  onChanged: (bool? value) {
                    setState(() {
                      bottleMilk = value!;
                    });
                  },
                ),


               Container(
              color: Colors.green, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SHOWER:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _showerController,
                    decoration: InputDecoration(
                      labelText: 'MORNING:',
                      labelStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), 
                    ),
                  ),
                  TextFormField(
                    controller: _afternoonController,
                    decoration: InputDecoration(
                      labelText: 'AFTERNOON:',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 18, 39, 18)), 
                    ),
                  ),
                ],
              ),
            ),

                        
               SizedBox(height: 50),
                TextFormField(
                controller: _notesController,
                   decoration: InputDecoration(
              labelText: 'Notes for my Parents',
                filled: true,
              fillColor: Color.fromARGB(255, 1, 94, 4).withOpacity(0.1), 
            ),
          ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _submitInfo,
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
