import 'package:super_store_e_commerce_flutter/imports.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _isHovering = false;
  bool _isCheckingOut = false;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const AppNameWidget(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 25,
              width: 25,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 165, 135, 179),
              ),
              child: TextBuilder(
                text: cart.itemCount.toString(),
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemCount: cart.items.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int i) {
            return CartCard(cart: cart.items[i]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 10.0);
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovering = true),
          onExit: (_) => setState(() => _isHovering = false),
          child: _isCheckingOut
              ? Center(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Thank You!'),
                            content: const Text(
                                'Your order has been successfully placed.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  setState(() {
                                    _isCheckingOut =
                                        false; // Setelah tombol "OK" ditekan, kembali ke kondisi awal
                                  });
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    color: Color.fromRGBO(48, 72, 42, 1),
                    textColor: Colors.white,
                    child: const Text('Place Order'),
                  ),
                )
              : MaterialButton(
                  height: 60,
                  color: _isHovering
                      ? Colors.purple[700]
                      : const Color.fromARGB(255, 165, 135, 179),
                  minWidth: size.width,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {
                    setState(() {
                      _isCheckingOut = true;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextBuilder(
                        text: '₹ ${cart.totalPrice()}',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      const SizedBox(width: 10.0),
                      TextBuilder(
                        // Menggunakan cart.itemCount untuk menampilkan jumlah barang yang dipesan
                        text: 'Checkout (${cart.itemCount})',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
