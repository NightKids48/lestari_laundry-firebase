part of '../../screens.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  Widget initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: itemsList(),
            ),
          ],
        ),
      ),
    );
  }

  Container itemsList() {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("images/kg.png", "Item Price", "Item desc"),
          items("images/kg.png", "Item Price", "Item desc"),
          items("images/kg.png", "Item Price", "Item desc"),
          items("images/kg.png", "Item Price", "Item desc"),
          items("images/kg.png", "Item Price", "Item desc"),
          items("images/kg.png", "Item Price", "Item desc"),
        ],
      ),
    );
  }

  items(String img, String tittle, String desc) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 130.0,
        child: Wrap(
          children: [
            Image(image: image),
            ListTile(
              onTap: () {},
              title: Text(
                tittle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                desc,
                style: const TextStyle(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
