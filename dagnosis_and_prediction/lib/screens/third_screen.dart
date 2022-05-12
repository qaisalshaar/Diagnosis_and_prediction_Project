import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

//form key used for validation form
  final _formkey = GlobalKey<FormState>();

  // editing controller

  final highpressureEditingController = new TextEditingController();
  final lowerpressureEditingController = new TextEditingController();

  final cholesterolFieldditingController = new TextEditingController();

  final bloodglucoserateFieldditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
// Gender Dropdown list

// high pressure Name field

    final highpressureNameField = TextFormField(
      autofocus: false,
      controller: highpressureEditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        highpressureEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "High Blood Pressure",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// lower pressure Name field

    final lowerpressureNameField = TextFormField(
      autofocus: false,
      controller: lowerpressureEditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        lowerpressureEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Lower Blood Pressure",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// bloodglucoserate Name field

    final BloodglucoserateNameField = TextFormField(
      autofocus: false,
      controller: lowerpressureEditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        bloodglucoserateFieldditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Blood Glucose Rate",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// SignUp Button

    final signUpBotton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "Print the Report",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

// cholesterol Field

    final CholesterolNameField = TextFormField(
      autofocus: false,
      controller: cholesterolFieldditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        cholesterolFieldditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Cholesterol",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        // create arow navigator to home page
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 100,
                          child: Image.asset(
                            "assets/test.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Blood Pressure :Hight and Low',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),
                      highpressureNameField,
                      SizedBox(height: 15),
                      lowerpressureNameField,
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Cholesterol :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),
                      CholesterolNameField,
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Blood Glucose Rate :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),
                      BloodglucoserateNameField,
                      SizedBox(height: 15),
                      signUpBotton,
                      SizedBox(height: 15),
                    ]),
              ),
            ),
          )),
        ));
  }
}
