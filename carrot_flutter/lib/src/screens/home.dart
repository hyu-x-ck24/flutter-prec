import 'package:carrot_flutter/src/widgets/more_bottom.dart';
import 'package:flutter/material.dart';

final List<BottomNavigationBarItem> myTabs = <BottomNavigationBarItem>[
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
  const BottomNavigationBarItem(icon: Icon(Icons.feed), label: '동네'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble_outline_rounded), label: '채팅'),
  const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '마이'),
];

final List<Widget> myTabItems = [
  const Center(child: Text('홈')),
  const Center(child: Text('동네')),
  const Center(child: Text('채팅')),
  const Center(child: Text('마이')),
];

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('내 동네'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return MoreBottomModal(cancelTap: () {
                    Navigator.pop(context);
                  });
                },
              );
            },
            icon: Icon(Icons.notifications_none_rounded),
          )
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: myTabs,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: myTabItems,
      ),
    );
  }
}
