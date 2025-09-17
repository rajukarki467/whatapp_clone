import 'package:flutter/material.dart';
import 'package:whatapp_clone/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();

    String selectedCountry = "Nepal";
    List<String> countries = ["Nepal", "USA", "UK", "India", "Germany"];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: UiHelper.CustomText(
            text: "Enter your phone number",
            height: 16,
            color: Color(0xff00a884),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "whatsApp will need to verify your phone",
            height: 14,
          ),
          UiHelper.CustomText(
            text: "number.Carrier charge may apply.",
            height: 14,
          ),
          UiHelper.CustomText(
            text: "what's my number?",
            height: 14,
            color: Color(0xff00a884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                // print(country);
                return DropdownMenuItem(
                  value: country,
                  child: Text(country.toString()),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff00a884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff00a884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+977",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: UiHelper.CustomButton(
        callback: () {},
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
