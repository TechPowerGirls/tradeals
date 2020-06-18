import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String _username, _email, _password;
  bool _obscureText = true;
  String dropdownValue = 'India';
  String _value;

  // Widget _showTitle (){
  //   return Text('Register', style:Theme.of(context).textTheme.headline);
  // }

  Widget _showUserNameInput() {
    return TextFormField(
      onSaved: (val) => _username = val,
      validator: (val) => val.length < 6 ? 'User name is too short' : 'null',
      decoration: InputDecoration(
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: const BorderSide(
            color: Color(0xFF0C3853),
            width: 2.0,
          ),
        ),
        labelText: 'User Name',
        hintText: 'Input User Name, minimum length 6 characters',
        icon: Icon(
          Icons.face,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showEmailInput() {
    return TextFormField(
      onSaved: (val) => _email = val,
      validator: (val) => !val.contains('@') ? 'Invalid email' : 'null',
      decoration: InputDecoration(
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: const BorderSide(
            color: Color(0xFF0C3853),
            width: 2.0,
          ),
        ),
        labelText: 'Email',
        hintText: 'Email',
        icon: Icon(
          Icons.email,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showPasswordInput() {
    return TextFormField(
      onSaved: (val) => _password = val,
      validator: (val) =>
          val.length < 6 ? 'Password must be of minimum 6 letter' : 'null',
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => setState(() {
            _obscureText = !_obscureText;
          }),
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: const BorderSide(
            color: Color(0xFF0C3853),
            width: 2.0,
          ),
        ),
        labelText: 'Password',
        hintText: 'Password',
        icon: Icon(
          Icons.lock,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showRetypePasswordInput() {
    return TextFormField(
      onSaved: (val) => _password = val,
      validator: (val) =>
          val.length < 6 ? 'Password must be of minimum 6 letter' : 'null',
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () => setState(() {
            _obscureText = !_obscureText;
          }),
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: const BorderSide(
            color: Color(0xFF0C3853),
            width: 2.0,
          ),
        ),
        labelText: 'Retype Password',
        hintText: 'Retype Password',
        icon: Icon(
          Icons.lock,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showCountryInput() {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.language,
            color: Color(0xFFF9A31A),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Container(
              width: 275,
              height: 60,
              decoration: new BoxDecoration(
          //color: Color(0xFF0C3853),
           border: Border.all(color: Color(0xFF0C3853), width: 2.0,),
          borderRadius: BorderRadius.all(
        Radius.circular(30.0),),
          
        ),      
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  items: [
                    DropdownMenuItem<String>(
                      child: Text('India'),
                      value: 'india',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('United Kingdom'),
                      value: 'uk',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Newzeland'),
                      value: 'newzeland',
                    ),
                  ],
                  onChanged: (String value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  hint: Text('Select Country'),
                  value: _value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showMobileNumberInput() {
    return TextFormField(
      onSaved: (val) => _email = val,
      validator: (val) => !val.contains('@') ? 'Invalid email' : 'null',
      decoration: InputDecoration(
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.all(
            Radius.circular(30.0),
          ),
          borderSide: const BorderSide(
            color: Color(0xFF0C3853),
            width: 2.0,
          ),
        ),
        labelText: 'Mobile Number',
        hintText: 'Mobile Number',
        icon: Icon(
          Icons.phone,
          color: Color(0xFFF9A31A),
        ),
      ),
    );
  }

  Widget _showFormActions() {
    return Column(
      children: [
        //   RaisedButton(onPressed: () => _submit(),
        //     child: Text('Submit', style: Theme.of(context).textTheme.body1),
        //     elevation: 8.0,
        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0),),),
        //     color: Theme.of(context).primaryColor,
        //   ),

        FlatButton(
          onPressed:
              () {}, //=> Navigator.pushReplacementNamed(context, '/login'),
          child: Text('Edit profile'),
        ),

        SizedBox(height: 20.0),
      ],
    );
  }

  void _submit() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
    }

    if (_formKey.currentState.validate()) {
      print('Form valid');
    } else {
      print('Form invalid');
    }
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
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(top: 30.0),
                //   child: _showTitle(),
                // ),
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
                  padding: EdgeInsets.only(top: 8.0),
                  child: _showMobileNumberInput(),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8.0),
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
