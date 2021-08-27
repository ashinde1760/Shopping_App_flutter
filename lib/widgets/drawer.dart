import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImage =
        "https://lh3.googleusercontent.com/mSvgPFQg9hX1NqJz7e1Uy77-bUbEff-ZOPVFjbqN5smz8Yp4pGK9SDMHx27a25IORy9eWntA-7dFg0tJLj1CbtqPtwX5t3iQEbtzcIXMTePK0CCojlMXhv7O8Wnd9qvImlYiWrz9YWKAg01p7Vm2QHizAb77-4UhqwzPd6ylhcC4kUG2Wz0p2ef2gX7y4YP8KQOeAcpsMYK7YrlTvoo62nEEQx094n924Ta6H4oYj4Gc7TAHD_4m33-dEM6VQg011WYZwAV_UfDaEzdTEw5qzfxVneCYoWvnw86qVD_Urj0-5TUDsTbQVty29X2QGuMHH52_fFO7FeOdnP6m3OqUWUQy0Dh5K0WBNDSKK9jR73JygbiDtPCfVLyhitMWEzRXt1KverlLxCU5fjOIi5RO1lPkpkp4OSZ0SpRrILsTgStlnM3FqvBdomRIJzvtHQuX4B9Uac78jjwdz_3Rz4ar_xLsCr4TDn-fZN4K-FHf35Z0IsqLnSEvPbkgZ9Dy9ChkxhEeEfxYw-1DmA_C2794J20Tra2ZO6wTJWffniMWaXVpCUpPzSAk1vBt0A56eMkeoWv0u8ZVL2smpz3twcrVU1rzBIAyOG8_yOq1hqhbl27LX_2ww9YDuHI3eiSyShPItxG1MrNXQ33569sRN8s6s9R2FVa7gQf7wwTjpc5b2jUiaubM0gTBuzJJhASrsSRF6pnV5-vlLPpzQVIPaOQfSMs0=w644-h708-no?authuser=0";
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Akshay Shinde"),
                  accountEmail: Text("ashinde1760@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(profileImage),
                  ),
                )),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.home);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.add,
                color: Colors.white,
              ),
              title: Text(
                "Add Product",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
              title: Text(
                "My Cart",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bag,
                color: Colors.white,
              ),
              title: Text(
                "My Orders",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_down_left_square,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
