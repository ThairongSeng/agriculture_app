import 'package:agriculture_app/data/products.dart';
import 'package:agriculture_app/widgets/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          //filter and search field
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              children: [
                   Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search here...",
                          isDense: true,
                          contentPadding: const EdgeInsets.all(12),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(99)
                            )
                          ),
                          prefixIcon: const Icon(IconlyLight.search)
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: IconButton.filled(
                        onPressed: (){},
                        icon: const Icon(IconlyLight.filter)
                    ),
                  )
              ],
            ),
          ),

          //consultation card
          SizedBox(
            height: 170,
            child: Card(
              color: Colors.green.shade50,
              elevation: 0.1,
              shadowColor: Colors.green.shade50,
              child:  Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    //text
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Free Consultation",
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: Colors.green.shade700
                              ),
                          ),
                          const Text("Get free support from our customer service"),
                          FilledButton(
                              onPressed: (){},
                              child: const Text("Call Now")
                          ),
                        ],
                      ),
                    ),
                    //image
                    Image.asset(
                        "assets/contact_us.png",
                        width: 140,
                    )
                  ],
                ),
              ),
            ),
          ),

          const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Featured Products",
                  style: Theme.of(context).textTheme.titleMedium
              ),
              TextButton(
                  onPressed: (){},
                  child: const Text("See all")
              )
            ],
          ),

          //feature product
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.9 //increase the height of the card
              ),
              itemBuilder: (context, index){
                return  ProductCart(
                  product: products[index],
                );
              }
          )
        ],
      )
    );
  }
}
