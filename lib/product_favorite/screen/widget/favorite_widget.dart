import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../../provider/add_favorite.dart';



class FavoriteWidget extends ConsumerStatefulWidget {
  final String? id;
  const FavoriteWidget(this.id, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends ConsumerState<FavoriteWidget> {

  final Box boxFav = Hive.box('favorites');
  bool isFav = false; 

  late String id = "";

   @override
  void initState() { 
    super.initState(); 
    isFav = Helpers.checkIsFav(id: widget.id.toString(), listFav: (boxFav.get('list_product_fav')));  
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextButton(
        onPressed: () async {
          bool a = await Helpers.updateFav(id: widget.id.toString(), boxFav: boxFav);
          setState(() {
            isFav = a;
            if(isFav==true){
              const snackBar = SnackBar(content: Text("Đã thích sản phẩm"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }else{
              const snackBar = SnackBar(content: Text("Bỏ thích sản phẩm"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          });
        },
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Icon(
          (isFav) ? Icons.favorite : Icons.favorite_border,
          size: 15,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
