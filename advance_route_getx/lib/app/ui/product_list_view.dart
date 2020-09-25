import 'package:advance_route_getx/app/controller/global_controller.dart';
import 'package:advance_route_getx/app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      id: 'products',
      init: GlobalController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('My Page'),

          ),
          body: ListView.builder(
            itemCount: _.productList.length,
              itemBuilder: (context,index){
              final Product product=_.productList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      trailing: IconButton(icon: Icon(Icons.favorite,
                      color: product.isFavorite ? Colors.blue : Colors.grey,
                      ),
                          onPressed: (){
                        _.onFavorite(index, !product.isFavorite);
                          }
                      ),
                      title: Text('${product.name}'),
                      leading: Text('${product.price}'),
                      subtitle:Text('${product.description}'),
                    ),

                    Divider(height: 10,)
                  ],
                ),
              );
              }
          ),
        );
      }
    );
  }
}
