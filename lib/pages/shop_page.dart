import 'package:flutter/material.dart';
import 'package:nike_ecom/models/cart.dart';
import 'package:nike_ecom/models/shoes.dart';
import 'package:provider/provider.dart';


import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart method

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItem(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
      children: [

        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 27),
          decoration: BoxDecoration(color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',
              style: TextStyle(
                color: Colors.grey
              ),),
              Icon(Icons.search),
            ],
          ),
        ),
  

       

      
        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                ),
              ),
          
              Text('See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 10),

        Expanded(child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            Shoe shoe = value.getShoeList()[index];
            return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeToCart(shoe),

              
              
              

            );
          })),

          Padding(
            padding: const EdgeInsets.only(
              top:25,
              left: 25,
              right: 25
            ),
            child: Divider(
              color: Colors.white,
           ),
          ),
        ],
      ),
    );
  }
}