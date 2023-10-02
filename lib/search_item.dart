import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/colors.dart';
import 'package:iwrotethem/utils/constant.dart';
import 'package:iwrotethem/utils/text_style.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Moyo", "age": 29},
    {"id": 3, "name": "Bolu", "age": 29},
    {"id": 4, "name": "Omor", "age": 29},
    {"id": 5, "name": "Toso", "age": 29},
    {"id": 6, "name": "Ferd", "age": 29},
    {"id": 7, "name": "Jamie", "age": 29},
    {"id": 8, "name": "Alonge", "age": 29},
    {"id": 9, "name": "Foden", "age": 29},
    {"id": 10, "name": "Ralia", "age": 29},
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: leftWithRightOrTopOrBottom(right: 20, top: 20),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(CupertinoIcons.search),
                ),
              ),
              heightFifty,
              Expanded(
                child: ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: ((context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: primaryColor,
                        elevation: 0,
                        child: ListTile(
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: semiboldtextStyle(14, colorWhite),
                          ),
                          title: Text(
                            _foundUsers[index]["name"],
                            style: boldtextStyle(16, colorWhite),
                          ),
                          subtitle: Text(
                            _foundUsers[index]["age"].toString(),
                            style: semiboldtextStyle(14, colorWhite),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
