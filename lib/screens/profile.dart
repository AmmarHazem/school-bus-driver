import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Text(
                'Driver name',
                style: Theme.of(context).textTheme.title,
              ),
              const SizedBox(height: 30),
              Divider(color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Email',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Phone Number',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Date Of Birth',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Nationality',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[600]),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Licens',
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[600]),
              RaisedButton(
                onPressed: () => Navigator.pushNamed(context, 'students'),
                child: Text('Go'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
