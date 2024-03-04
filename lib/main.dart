import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balanced Diet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class Calorie extends StatefulWidget {
  @override
  _CalorieState createState() => _CalorieState();
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    BmiPage(),
    Calorie(),
    TdeePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balanced Diet'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // ตั้งค่า type เป็น fixed
        selectedItemColor: Colors.blue, // สีของ item ที่ถูกเลือก
        unselectedItemColor: Colors.grey, // สีของ item ที่ไม่ถูกเลือก
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_outlined),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bloodtype),
            label: 'Calorie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center_rounded),
            label: 'TDEE',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health and Care'),
        backgroundColor: Colors.green, // สีพื้นหลังของ App Bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'สุขภาพดีทำไม่ยาก แค่เลือกทานอาหารสุขภาพดีแบบ Balanced Diet',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green, // สีข้อความ
              ),
            ),
            SizedBox(height: 20.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/img/D.jpg',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '1. กินเมนูหลากหลาย ไม่ซ้ำ ๆ กัน อย่างน้อย 3 วันติด \n'
                '2. จัดจานอาหารให้ได้ 2:1:1 อย่างน้อย 1 มื้อต่อวัน \n'
                '3. เพิ่มผักใยและผลไม้รวม 5 กำปั้นมือต่อวัน \n'
                '4. กินน้ำมันจากพืชเป็นหลัก เช่น น้ำมันรำข้าว ถั่วเปลือกแข็ง เช่น อัลมอนด์ พิทาชิโอ \n'
                '5. ดื่มน้ำเปล่าอย่างน้อย วันละ 1-2 ลิตร ต่อวัน',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'อาหารสมดุลหรือ Balanced Diet คืออะไร ',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green, // สีข้อความ
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'อาหารสมดุล หรือ Balanced diet คือ สัดส่วนของอาหารที่เหมาะสมทั้งประเภทและปริมาณ เพื่อให้ได้รับสารอาหารที่เหมาะสมอย่างเพียงพอจากการบริโภคอาหารและเครื่องดื่ม ส่งผลให้ร่างกายมีสภาพสุขภาพและน้ำหนักตัวที่สมดุล ดังนั้น Balanced Diet ในมุมมองของผู้เขียน จึงเป็นการเลือกทานอาหารสุขภาพดีหรือเครื่องดื่มที่มีประโยชน์เพื่อให้เรานั้นมีสุขภาพที่สมบูรณ์ โดยประกอบไปด้วยทานอาหารให้ครบหมู่เพื่อให้ได้สารอาหารต่าง ๆ  เช่น คาร์โบไฮเดรต โปรตีน ไขมัน วิตามิน เกลือแร่ และดื่มน้ำให้เพียงพอ รวมถึงควรทานให้มีความหลากหลายในปริมาณที่เหมาะสมตามความต้องการของร่างกายกับการใช้พลังงานในแต่ละวัน นอกจากนี้การทานอาหารที่มีรสชาติอร่อยถูกปากยังช่วยทำให้เรามีความสุขทั้งกายและใจ ซึ่งจะส่งผลต่อสภาวะอารมณ์ที่สมดุล  (Balance Mood) เกิดเป็นความสุขจากการมีสุขภาพที่ดีแบบองค์รวม ซึ่งอาหารสุขภาพดีเหล่านี้นี้ยังมีบทบาทในการเชื่อมโยงส่งต่อความสุขนี้สู่ครอบครัว เพื่อน และสังคมได้ (Balance Social) ต่อไปนั่นเอง',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/img/DD.jpg',
                width: 350,
                height: 350,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'แล้วคุณรักสุขภาพของคุณไหม',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showResponseDialog(
                        context, 'คุณเป็นคนที่เก่งมากน่ารักมากๆเอาตูดทีนึ่ง');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // สีปุ่ม Yes
                  ),
                  child: Text(
                    'Yes',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showResponseDialog(
                        context, 'สมควรที่เขาไม่รักขนาดตัวเองยังไม่รักเลย');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // สีปุ่ม No
                  ),
                  child: Text(
                    'No',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showResponseDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Response'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class Product {
  int quantity;
  int totalCalories;
  String? imageAsset; // เพิ่มฟิลด์นี้
  String details;

  Product({
    required this.quantity,
    required this.totalCalories,
    this.imageAsset,
    required this.details,
  });
}

class _CalorieState extends State<Calorie> {
  List<Product> products = List.generate(
    6,
    (index) {
      String details;
      String imageAsset;
      if (index == 0) {
        details = 'ผักสลัด = 15 calories';
        imageAsset = 'assets/img/a1.png'; // เพิ่มตรงนี้
      } else if (index == 1) {
        details = 'อกไก่ 100 g = 120 calories';
        imageAsset = 'assets/img/a2.png'; // เพิ่มตรงนี้
      } else if (index == 2) {
        details = 'ไข่ต้ม = 90 calories';
        imageAsset = 'assets/img/a3.png'; // เพิ่มตรงนี้
      } else if (index == 3) {
        details = 'ฟักทองต้ม 100 g = 20 calories';
        imageAsset = 'assets/img/a4.png'; // เพิ่มตรงนี้
      } else if (index == 4) {
        details = 'แซลม่อนน่าอร่อย 100 g = 208 calories';
        imageAsset = 'assets/img/a5.png'; //
      } else {
        details = 'น้ำมันมะกอกมันมันเพื่อสุขภาพ';
        imageAsset = 'assets/img/a6.png';
      }
      return Product(
        quantity: 0,
        totalCalories: 0,
        imageAsset: imageAsset,
        details: details,
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recommend Food',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var product in products)
              ProductBlock(
                product: product,
              ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class ProductBlock extends StatelessWidget {
  final Product product;

  ProductBlock({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              if (product.imageAsset != null)
                Image.asset(
                  product.imageAsset!,
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
            ],
          ),
        ),
        SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'รายละเอียด:',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.details,
              style: TextStyle(
                fontSize: 12.0,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/bmi.png',
                fit: BoxFit.contain,
                height: 250,
              ),
              SizedBox(height: 8),
              SizedBox(height: 10),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                  hintText: 'Enter your weight in kilograms',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height (cm)',
                  hintText: 'Enter your height in centimeters',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showBmiResultDialog();
                },
                child: Text('Calculate BMI'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateBmi() {
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      return weight / ((height / 100) * (height / 100));
    } else {
      return 0.0;
    }
  }

  void _showBmiResultDialog() {
    double bmi = _calculateBmi();
    String result = _interpretBmi(bmi);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('BMI Result'),
          content: Text('Your BMI: ${bmi.toStringAsFixed(2)}\n$result'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  String _interpretBmi(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight/ผอมบางเกินไปนะ';
    } else if (bmi >= 18.5 && bmi <= 22.9) {
      return 'Normal weight/หุ่นสุดยอดมาก';
    } else if (bmi >= 23 && bmi <= 24.9) {
      return 'Overweight/เริ่มอ้วนแล้วนะ';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Obese/อ้วนแล้วนะ';
    } else {
      return 'ไม่ไหวแล้วอ้วนสุดๆ';
    }
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class TdeePage extends StatefulWidget {
  @override
  _TdeePageState createState() => _TdeePageState();
}

class _TdeePageState extends State<TdeePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  double? calculateBmr() {
    double age = double.tryParse(ageController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;
    double? bmr;

    if (gender == 'Male') {
      bmr = (66 + (13.7 * weight) + (5 * height)) - (8 * age);
    } else {
      bmr = (655 + (9.6 * weight) + (8 * height)) - (4.7 * age);
    }

    return bmr;
  }

  double? calculateTdee(double? bmr) {
    return bmr != null ? bmr * activityLevel! : null;
  }

  String? gender;
  double? activityLevel;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TDEE Calculator',
          style: TextStyle(
            fontFamily: 'Pacifico', // เลือกฟอนต์
            fontSize: 24.0, // ขนาดตัวอักษร
            fontWeight: FontWeight.bold, // ความเข้มข้น
            letterSpacing: 1.5, // ระยะห่างระหว่างตัวอักษร
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                  hintText: 'Enter your weight in kilograms',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height (cm)',
                  hintText: 'Enter your height in centimeters',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              Text('Gender:', style: TextStyle(fontSize: 16.0)),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value as String;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<double>(
                value: activityLevel,
                decoration: InputDecoration(
                  labelText: 'Activity Level',
                  hintText: 'Select your activity level',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    activityLevel = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select your activity level';
                  }
                  double? enteredValue = value;

                  // เงื่อนไขตามที่คุณต้องการ
                  if (enteredValue == 1.2) {
                    // ไม่ออกกำลังกายหรือกิจวัตรประจำวัน
                  } else if (enteredValue == 1.375) {
                    // ออกกำลังกายเบา ๆ หรือออกกำลังกาย 1 – 2 ครั้งต่อสัปดาห์
                  } else if (enteredValue == 1.55) {
                    // ออกกำลังกายปานกลาง หรือออกกำลังกาย 3 – 5 ครั้งต่อสัปดาห์
                  } else if (enteredValue == 1.725) {
                    // ออกกำลังกายหนัก หรือออกกำลังกาย 6 – 7 ครั้งต่อสัปดาห์
                  } else if (enteredValue == 9.0) {
                    // ออกกำลังกายหนักมาก หรือออกกำลังกายทุกวัน วันละ 2 เวลา
                  }

                  return null;
                },
                items: [
                  DropdownMenuItem<double>(
                    value: null,
                    child:
                        Text('Select an option'), // เพิ่ม DropdownMenuItem นี้
                  ),
                  DropdownMenuItem<double>(
                    value: 1.2,
                    child: Text('Sedentary(นอนอย่างเดียว)'),
                  ),
                  DropdownMenuItem<double>(
                    value: 1.375,
                    child: Text('Light exercise/1 - 2 วัน/สัปดาห์'),
                  ),
                  DropdownMenuItem<double>(
                    value: 1.55,
                    child: Text('Moderate exercise/3 - 4 วัน/สัปดาห์'),
                  ),
                  DropdownMenuItem<double>(
                    value: 1.725,
                    child: Text('Hard exercise/6 - 7 วัน/สัปดาห์ '),
                  ),
                  DropdownMenuItem<double>(
                    value: 9.0,
                    child: Text('Very hard exercise/ออกสุดจัด'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    double? bmr = calculateBmr();
                    double? tdee = calculateTdee(bmr);
                    String name = nameController.text.trim();

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('TDEE Result for $name'),
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  'จำนวน Cal ที่ใช้ Bmr = ${bmr?.toStringAsFixed(2) ?? 'N/A'} Cal/day.',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'พลังงานทั้งหมด Tdee = ${tdee?.toStringAsFixed(2) ?? 'N/A'} Cal/day.',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'OK',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                        );
                      },
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Text(
                  'Calculate TDEE',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
