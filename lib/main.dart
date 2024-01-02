import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemoApp',
      home: MyAppPage(),
    );
  }
}

// 기본 홈
class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => MyAppState();
}

class MyAppState extends State<MyAppPage> {
  // 바텀 네비게이션 바 인덱스
  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    MyMemoPage(),
    CommunityPage(),
    MyInfoPage(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navIndex.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home_filled),
          //   label: '홈',
          //   backgroundColor: Colors.white,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: '메모',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '내 정보',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}

class MyMemoPage extends StatefulWidget {
  const MyMemoPage({super.key});

  @override
  State<MyMemoPage> createState() => _MyMemoPageState();
}

class _MyMemoPageState extends State<MyMemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'community dfdf',
        ),
      ),
    );
  }
}





// 커뮤니티 페이지
class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => CommunityState();
}

class CommunityState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'community page',
        ),
      ),
    );
  }
}




// 내 정보 페이지
class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'my info page',
        ),
      ),
    );
  }
}