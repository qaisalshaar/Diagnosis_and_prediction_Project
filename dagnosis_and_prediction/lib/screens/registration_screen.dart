import 'package:dagnosis_and_prediction/screens/third_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

//form key used for validation form
  final _formkey = GlobalKey<FormState>();

  // editing controller

  final firstNameEditingController = new TextEditingController();
  final secondNameEditingController = new TextEditingController();
  final nickeNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  final highpressureEditingController = new TextEditingController();
  final lowerpressureEditingController = new TextEditingController();

  final birthdateFieldditingController = new TextEditingController();

  final weightFieldditingController = new TextEditingController();

  final heightFieldditingController = new TextEditingController();

  final cholesterolFieldditingController = new TextEditingController();

  // final medicineFieldditingController = new TextEditingController();

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

  var selectGender = "Male";

  var selectMedicine = "None";

  var selectDiabetesinFamily = "No";

  @override
  Widget build(BuildContext context) {
// Gender Dropdown list

// First Name field

    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,

      // validator: (),

      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// Second Name field

    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNameEditingController,
      keyboardType: TextInputType.name,

      // validator: (),

      onSaved: (value) {
        secondNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// Nike Name field

    final nikeNameField = TextFormField(
      autofocus: false,
      controller: nickeNameEditingController,
      keyboardType: TextInputType.name,

      // validator: (),

      onSaved: (value) {
        nickeNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Nike Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// email field

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,

      // validator: (),

      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// password field

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      // to hide pssword content
      obscureText: true,

      // validator: (),

      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// password field

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      // to hide pssword content
      obscureText: true,

      // validator: (),

      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

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

// SignUp Button

    final signUpBotton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ThirdScreen()));
        },
        child: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

// Birth date

    final birthdateField = TextFormField(
      autofocus: false,
      controller: birthdateFieldditingController,
      keyboardType: TextInputType.name,

      // validator: (),

      onSaved: (value) {
        birthdateFieldditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.date_range),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Birth Date",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// Weight field

    final WeightNameField = TextFormField(
      autofocus: false,
      controller: weightFieldditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        weightFieldditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Weight",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

// Height Field

    final HeightNameField = TextFormField(
      autofocus: false,
      controller: highpressureEditingController,
      keyboardType: TextInputType.number,

      // validator: (),

      onSaved: (value) {
        heightFieldditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Height",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
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

// Medicine Field

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
                      SizedBox(height: 45),
                      firstNameField,
                      SizedBox(height: 20),
                      secondNameField,
                      SizedBox(height: 20),
                      nikeNameField,
                      SizedBox(height: 20),
                      emailField,
                      SizedBox(height: 20),
                      passwordField,
                      SizedBox(height: 20),
                      confirmPasswordField,
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
                      // Start Gender Drop down
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Gender :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),

                      SizedBox(
                        height: 1,
                        width: 300,
                      ),
                      Container(
                        child: Container(
                          width: 200,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          // padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          child: DropdownButtonFormField(
                            hint: Text('HHH'),
                            iconSize: 40,
                            isExpanded: true,

                            // dropdownColor: Colors.redAccent,

                            // underline: Divider(
                            //   thickness: 0,
                            //   color: Colors.transparent,
                            // ),

                            items: ["Male", "Female"]
                                .map((e) => DropdownMenuItem(
                                      child: Text("$e"),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selectGender = val.toString();
                              });
                            },
                            value: selectGender,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: 300,
                      ),
                      //End  Gender Drop down

                      birthdateField,
                      SizedBox(height: 15),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Weight and Height :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),

                      WeightNameField,
                      SizedBox(height: 15),
                      HeightNameField,
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

                      //Start Medicen Drop Down

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          top: 25,
                        ),
                        child: Text(
                          'Medicine Selection :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),

                      Container(
                        child: Container(
                          width: 200,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          // padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          child: DropdownButtonFormField(
                            hint: Text('HHH'),
                            iconSize: 40,
                            isExpanded: true,

                            // dropdownColor: Colors.redAccent,

                            // underline: Divider(
                            //   thickness: 0,
                            //   color: Colors.transparent,
                            // ),

                            items: ["None", "Tablet", "Injiction"]
                                .map((e) => DropdownMenuItem(
                                      child: Text("$e"),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selectMedicine = val.toString();
                              });
                            },
                            value: selectMedicine,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        width: 300,
                      ),

                      // End Medicen Drop Dwon

// Start diablets Drop Dwon

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          'Diabetes in the family :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ),

                      Container(
                        child: Container(
                          width: 200,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          // padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          child: DropdownButtonFormField(
                            hint: Text('HHH'),
                            iconSize: 40,
                            isExpanded: true,

                            // dropdownColor: Colors.redAccent,

                            // underline: Divider(
                            //   thickness: 0,
                            //   color: Colors.transparent,
                            // ),

                            items: ["Yes", "No"]
                                .map((e) => DropdownMenuItem(
                                      child: Text("$e"),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selectDiabetesinFamily = val.toString();
                              });
                            },
                            value: selectDiabetesinFamily,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 300,
                      ),

// End Diablets drop Down

                      signUpBotton,
                      SizedBox(height: 15),
                    ]),
              ),
            ),
          )),
        ));
  }
}
