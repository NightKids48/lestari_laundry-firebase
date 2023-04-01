part of '../screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _container = [
    DashboardView(),
    OrderScreen(),
    ActivityScreen(),
    UserView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorName.primary,
        onPressed: () {
          context.goNamed('detailorder');
        },
        child: const Icon(Icons.add),
      ).pOnly(bottom: 40, top: 20),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _container[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: colorName.silver,
        selectedItemColor: colorName.primary,
        elevation: 0,
        showUnselectedLabels: true,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
