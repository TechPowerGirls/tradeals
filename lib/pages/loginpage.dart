import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _password, _username, _value;
  bool _obscureText = true;
  final TextEditingController _passwordcotroller = new TextEditingController();

  void initState() {
    super.initState();
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
          height: 200,
          width: 350,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,

            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              //  'https://i1.wp.com/www.docker.com/blog/wp-content/uploads/2019/10/Renee-M.jpg'),
            ),
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
        labelText: 'User Name',
        hintText: 'User Name, min length 6 characters',
        focusColor: Color(0xFF0C3853),
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

  Widget _showFormActions() {
    return Column(
      children: [
        SizedBox(
          width: 300.0,
          height: 50.0,
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _Submit();
              });
            },
            child: Text(
              'Log In',
              style: TextStyle(fontSize: 20.0),
            ),
            textColor: Colors.white,
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            color: Color(0xFFF9A31A),
          ),
        ),
        FlatButton(
          child: Text("New User? Register"),
          onPressed: () => Navigator.pushReplacementNamed(context, '/register'),
        ),
      ],
    );
  }

  void _Submit() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print('User name : ${_username}, Password : ${_password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Color(0xFF0C3853),
        centerTitle: true,
      ),
      // backgroundColor: Color((0xFF0C3853)),
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
              children: <Widget>[
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
                  child: _showPasswordInput(),
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
