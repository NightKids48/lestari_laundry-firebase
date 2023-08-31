part of 'admin_screen.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _currentIndex = 0;
  final List<Widget> _container = [
    DashboardAdmin(),
    OrderAdmin(),
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
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_rounded),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Report',
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
