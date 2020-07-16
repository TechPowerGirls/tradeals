import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  var _countryMap = ['India', 'United Kingdom', 'New Zealand'];
  String _username, _email, _password, _mobileno, _country, _repassword;
  bool _obscureText = true;
  bool _obscureTextRe = true;
  String dropdownValue = 'India';
  String _value;
  FocusNode _focusNode = new FocusNode();
  final TextEditingController _passwordcotroller = new TextEditingController();

  void initState() {
    super.initState();
    // _selectedNewCurrency = _currencies[0];
  }

  void dispose() {
    if (this.mounted) super.dispose();
    _passwordcotroller.dispose();
  }

  Widget _ShowProfileImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i1.wp.com/www.docker.com/blog/wp-content/uploads/2019/10/Renee-M.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.photo_camera,
            color: Color(0xFFF9A31A),
          ),
        ),
      ],
    );
  }

  Widget _showUserNameInput() {
    return TextFormField(
      onSaved: (val) => _username = val,
      validator: (val) => val.length < 6 ? 'User name is too short' : null,
      decoration: new InputDecoration(
        prefixIcon: Icon(
          Icons.face,
          color: Color(0xFFF9A31A),
        ),
        /* labelStyle: TextStyle(
          color:_focusNode.hasFocus?Colors.red :Colors.purple,
        ),*/
        labelText: 'User Name',
        hintText: 'User Name, min length 6 characters',
        focusColor: Color(0xFF0C3853),
      ),
    );
  }

  Widget _showEmailInput() {
    return TextFormField(
      onSaved: (val) => _email = val,
      keyboardType: TextInputType.emailAddress,
      validator: (val) => !val.contains('@') ? 'Invalid email' : null,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Color(0xFFF9A31A),
        ),
        focusColor: Color(0xFF0C3853),
        labelText: 'Email',
        hintText: 'Enter email',
      ),
    );
  }

  Widget _showPasswordInput() {
    return TextFormField(
      controller: _passwordcotroller,
      onSaved: (val) => _password = val,
      validator: (val) =>
          val.length < 6 ? 'Password must be of minimum 6 letter' : null,
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => setState(() {
            _obscureText = !_obscureText;
          }),
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Color(0xFFF9A31A),
        ),
        focusColor: Color(0xFF0C3853),
        labelText: 'Password',
        hintText: 'Enter Password , min. length 6',
      ),
    );
  }

  bool validationEqual(String currentValue, String checkValue) {
    if (currentValue == checkValue) {
      return true;
    } else {
      return false;
    }
  }

  Widget _showRetypePasswordInput() {
    return TextFormField(
      onSaved: (val) => _repassword = val,
      validator: (confirmation) {
        return confirmation.isEmpty
            ? 'Confirm password is required'
            : validationEqual(confirmation, _passwordcotroller.text)
                ? null
                : 'Password does not match';
      },

      // validator: (val) =>
      //val.length < 6 ? 'Password must be of minimum 6 letter' : null,
      obscureText: _obscureTextRe,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => setState(() {
            _obscureTextRe = !_obscureTextRe;
          }),
          child: Icon(
            _obscureTextRe ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Color(0xFFF9A31A),
        ),
        focusColor: Color(0xFF0C3853),
        labelText: 'Retype Password',
        hintText: 'Enter Password  , min. length 6',
      ),
    );
  }

  Widget _showCountryInput() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: Icon(
            Icons.language,
            color: Color(0xFFF9A31A),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Container(
            width: 300,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                items: _countryMap.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String value) {
                  setState(() {
                    _value = value;
                    _country = _value;
                  });
                },
                focusColor: Color(0xFF0C3853),
                hint: Text('Select Country'),
                value: _value,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _showMobileNumberInput() {
    return TextFormField(
      onSaved: (val) => _mobileno = val,
      keyboardType: TextInputType.phone,
      validator: (val) => val.length < 9 ? 'Invalid mobile' : null,
      decoration: InputDecoration(
        focusColor: Color(0xFF0C3853),
        labelText: 'Mobile Number',
        hintText: 'Enter mobile number',
        prefixIcon: Icon(
          Icons.phone,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showFormActions() {
    return Column(
      children: [
        RaisedButton(
          onPressed: () {
            setState(() {
              _submit();
            });
          },
          // onPressed: () => _submit(),
          child: Text('Update Profile'),
          textColor: Colors.white,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          color: Color(0xFFF9A31A),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  void _submit() {
    final form = _formKey.currentState;
    print(
        'UserName : ${_username}, Email : ${_email}, Password : ${_password}, RePassword : ${_repassword},Country : ${_country},Mobile number : ${_mobileno}');
    if (form.validate()) {
      form.save();
      print(
          'newUserName : ${_username}, Email : ${_email}, Password : ${_password}, RePassword : ${_repassword},Country : ${_country},Mobile number : ${_mobileno}');
    } else
      print('Invalid form');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF0C3853),
        centerTitle: true,
      ),
      backgroundColor: Color((0xFF0C3853)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ShowProfileImage(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showUserNameInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showEmailInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showPasswordInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showRetypePasswordInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showCountryInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showMobileNumberInput(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: _showFormActions(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
