import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:super_store_e_commerce_flutter/imports.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 170.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(RawString.appLogoURL),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextBuilder(
                              text: RawString.appName,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            TextBuilder(
                              text: RawString.dummyEmail,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const Home()),
                            );
                          },
                          leading: const Icon(
                            Icons.home,
                            color: Color.fromARGB(255, 165, 135, 179),
                            size: 20,
                          ),
                          title: const TextBuilder(
                            text: "Home",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const Cart()),
                            );
                          },
                          leading: const Icon(
                            Icons.shopping_bag,
                            color: Color.fromARGB(255, 165, 135, 179),
                            size: 20,
                          ),
                          title: const TextBuilder(
                            text: "Cart",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            launch(RawString.gitHubRepo);
                          },
                          leading: const Icon(Icons.source,
                              color: Color.fromARGB(255, 165, 135, 179),
                              size: 20),
                          title: const TextBuilder(
                              text: "Source code",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        ListTile(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Contact Information'),
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                          'Alamat Toko: Jl. Juanda Samarinda, Kalimantan Timur Indonesia'),
                                      const SizedBox(height: 10),
                                      const Text('Email:'),
                                      GestureDetector(
                                        onTap: () {
                                          launch('mailto:randomshop@gmail.com');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                122, 141, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            'randomshop@gmail.com',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text('No Hp Admin:'),
                                      GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://wa.me/+6282338725655');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                122, 141, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            '+62 823 3872 5655 (Widya)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launch('https://wa.me/+628788872316');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                122, 141, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            '+62 878 8872 2316 (Aulia)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://wa.me/+6281227555420');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                122, 141, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            '+62 812 2755 5420 (Fithrah)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launch(
                                              'https://wa.me/+6282252216853');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                122, 141, 117, 1),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.all(5),
                                          child: const Text(
                                            '+62 822 5221 6853 (Aji)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          leading: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 165, 135, 179),
                            size: 20,
                          ),
                          title: const TextBuilder(
                              text: "Contact",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            showAboutDialog(
                              applicationName: RawString.appName,
                              context: context,
                              applicationVersion: '1.0.0+1',
                              applicationLegalese:
                                  '© 2024 Super Store E-Commerce',
                              children: [
                                const Text(
                                  'Super Store E-Commerce adalah aplikasi untuk belanja online yang menyediakan berbagai jenis produk dengan kualitas terbaik.',
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Di Super Store E-Commerce, Anda dapat menemukan berbagai macam barang, mulai dari pakaian, perlengkapan rumah tangga, elektronik, dan masih banyak lagi',
                                ),
                              ],
                            );
                          },
                          child: const ListTile(
                            leading: Icon(
                              Icons.info,
                              color: Color.fromARGB(255, 165, 135, 179),
                              size: 20,
                            ),
                            title: TextBuilder(
                                text: "About App",
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              child: Column(
                children: [
                  const AppNameWidget(),
                  TextBuilder(
                    text: RawString.appDescription,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
