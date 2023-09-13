part of '../../screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _container = [
    DashboardView(),
    ActivityScreen(),
    UserView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _container[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_rounded),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: colorName.grey,
        selectedItemColor: colorName.primary,
        elevation: 0,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontFamily: 'nunitoexb'),
        unselectedLabelStyle: TextStyle(fontFamily: 'nunito'),
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
