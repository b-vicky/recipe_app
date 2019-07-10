import 'package:flutter/material.dart';
import 'package:recipes_app/themes/google.button.theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage('assets/images/heather-ford-493944-unsplash.jpg'),
              fit: BoxFit.cover));
    }

    Text _buildText() {
      return Text('Recipes',
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center);
    }

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          decoration: _buildBackground(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildText(),
                SizedBox(
                  height: 50.0,
                ),
                GoogleSignInButton(
                  onPressed: () => {
                        // print('Button Pressed')
                        Navigator.of(context).pushReplacementNamed('/')
                      },
                )
              ],
            ),
          ),
        ));
  }
}
