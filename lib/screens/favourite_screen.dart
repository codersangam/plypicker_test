import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VxBox(
          child: Row(
            children: [
              Image.network(
                      'https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&i xid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmF0aHJvb218ZW58MHx8MHx8&auto=f ormat&fit=crop&w=500&q=60')
                  .box
                  .rounded
                  .make(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Modular bathroom 1'.text.lg.bold.make(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    'Cera'.text.caption(context).make(),
                    ButtonBar(
                      buttonPadding: EdgeInsets.zero,
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Rs. 5000".text.lg.make(),
                      ],
                    ).pOnly(right: 10, top: 10)
                  ],
                ).pOnly(left: 10),
              ),
            ],
          ),
        ).height(100).rounded.make().p8(),
        const Divider(
          height: 3.0,
          color: Vx.gray400,
        ).p8(),
        VxBox(
          child: Row(
            children: [
              Image.network(
                      'https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&i xid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmF0aHJvb218ZW58MHx8MHx8&auto=f ormat&fit=crop&w=500&q=60')
                  .box
                  .rounded
                  .make(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Modular bathroom 1'.text.lg.bold.make(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    'Cera'.text.caption(context).make(),
                    ButtonBar(
                      buttonPadding: EdgeInsets.zero,
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Rs. 5000".text.lg.make(),
                      ],
                    ).pOnly(right: 10, top: 10)
                  ],
                ).pOnly(left: 10),
              ),
            ],
          ),
        ).height(100).rounded.make().p8(),
        const Divider(
          height: 3.0,
          color: Vx.gray400,
        ).p8(),
        VxBox(
          child: Row(
            children: [
              Image.network(
                      'https://images.unsplash.com/photo-1600566752355-35792bedcfea?ixlib=rb-1.2.1&i xid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmF0aHJvb218ZW58MHx8MHx8&auto=f ormat&fit=crop&w=500&q=60')
                  .box
                  .rounded
                  .make(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Modular bathroom 1'.text.lg.bold.make(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    'Cera'.text.caption(context).make(),
                    ButtonBar(
                      buttonPadding: EdgeInsets.zero,
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Rs. 5000".text.lg.make(),
                      ],
                    ).pOnly(right: 10, top: 10)
                  ],
                ).pOnly(left: 10),
              ),
            ],
          ),
        ).height(100).rounded.make().p8(),
        const Divider(
          height: 3.0,
          color: Vx.gray400,
        ).p8(),
      ],
    );
  }
}
