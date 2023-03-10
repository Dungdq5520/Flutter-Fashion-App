import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductItemWidget extends ConsumerWidget {
  final String id;
  final String namevi;
  final String photo;
  final String price;

  const ProductItemWidget(this.id, this.namevi, this.photo, this.price,
      {super.key});

  @override
  Widget build(context, ref) {
    return Container(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push('/product-detail/$id');
              },
              splashColor: Colors.transparent,
              child: Image.network(
                photo,
                width: double.infinity,
                height: 205,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    namevi,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(55, 55, 55, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                  height: 35,
                  child: IconButton(
                    autofocus: true,
                    alignment: Alignment.topCenter,
                    icon: const Icon(
                      // ignore: dead_code
                      false ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 18,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 5),
          //   width: double.infinity,
          //   child: Text(
          //     formatCurrency(int.parse(price)),
          //     textAlign: TextAlign.left,
          //     style: const TextStyle(
          //       fontSize: 14,
          //       color: Color(0xFFFF7465),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
