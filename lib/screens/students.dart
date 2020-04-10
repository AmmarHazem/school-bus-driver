import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('BTS'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Students On Map'),
              Tab(text: 'Students On Bus'),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              Center(child: Text('Students on map')),
              StudentsOnBus(),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentsOnBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listViewItems = <Widget>[
      StudentsCount(
        color: Colors.green,
        text: 'Present',
      ),
      StudentsCount(
        color: Colors.yellow,
        text: 'Waiting',
      ),
      StudentsCount(
        color: Colors.red,
        text: 'Absent',
      ),
      StudentsCount(
        color: Colors.blue,
        text: 'Students',
      ),
      ...List.generate(
        15,
        (index) => StudentItem(
          name: 'Student Name',
          order: index + 1,
        ),
      ),
    ];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        // horizontal: 15,
        vertical: 30,
      ),
      itemBuilder: (cxt, index) => listViewItems[index],
      itemCount: listViewItems.length,
    );
  }
}

class StudentItem extends StatefulWidget {
  final String name;
  final int order;

  const StudentItem({
    Key key,
    @required this.name,
    @required this.order,
  }) : super(key: key);

  @override
  _StudentItemState createState() => _StudentItemState();
}

class _StudentItemState extends State<StudentItem> {
  var _checkOut = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.indigo,
            ),
            alignment: Alignment.center,
            child: Text(
              widget.order.toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 5),
          Text(widget.name),
          Spacer(),
          SizedBox(
            width: 35,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(
                Icons.person_add,
                color: Colors.red,
              ),
              onPressed: () {},
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            width: 35,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(
                Icons.email,
                color: Colors.orange,
              ),
              onPressed: () {},
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            width: 35,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              onPressed: () {},
              color: Colors.grey[700],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(3),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            child: DropdownButton<String>(
              style: Theme.of(context).textTheme.caption,
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              hint: Text(
                _checkOut ? 'Check out' : 'Check in',
                style: TextStyle(color: Colors.white),
              ),
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Check In',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  value: 'check-in',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Check Out',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  value: 'check-out',
                ),
              ],
              onChanged: (value) => setState(() {
                _checkOut = value == 'check-in' ? false : true;
              }),
            ),
          ),
          // FlatButton(
          //   child: Text('Check In'),
          //   onPressed: () {},
          //   color: Theme.of(context).primaryColor,
          //   textColor: Colors.white,
          // ),
        ],
      ),
    );
  }
}

class StudentsCount extends StatelessWidget {
  const StudentsCount({
    Key key,
    @required this.text,
    @required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                color: color,
              ),
              const SizedBox(width: 10),
              Text('Total $text'),
            ],
          ),
        ),
        Divider(color: Colors.grey[600]),
      ],
    );
  }
}
