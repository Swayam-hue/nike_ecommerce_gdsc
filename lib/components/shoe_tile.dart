import 'package:flutter/material.dart';
import 'package:nike_ecom/models/shoes.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  Shoe shoe;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],  
        borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //images
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(shoe.imagepath)
            ),

            //descr
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                shoe.desc,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
                ),
            ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //shoe name
                        Text(shoe.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                        ),
                
                        SizedBox(height: 1),
                
                        //price
                        Text('\$' + shoe.price,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        ),
                      ],
                    ),
                    //shoe name
                
                    //price
                
                    //plus button
                    GestureDetector(
                      onTap: () => onTap,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        )
                        ),
                        child: const Icon(Icons.add,
                        color: Colors.white,),
                      ),
                    )
                  ],
                ),
              )


            //price + details

            //button to add to cart
          ],
        ),
    );
  }
}