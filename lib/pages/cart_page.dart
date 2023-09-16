import 'package:agriculture_app/data/products.dart';
import 'package:agriculture_app/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = products.take(4).toList();
    final totalPrice = cartItems
        .map((e) => e.price)
        .reduce((acc, cur) => acc + cur);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          //List of cart item spread of in the view
          ...List.generate(cartItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CartItem(cartItem: cartItems[index]),
            );
          }),

          const SizedBox(height: 15,),
          //total item in the cart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total (${cartItems.length})"),
              Text("\$${totalPrice}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary
                  ))
            ],
          ),
          const SizedBox(height: 20,),
          
          //checkout button
          FilledButton.icon(
              onPressed: (){},
              icon: const Icon(IconlyBold.arrowRight),
              label: const Text("Proceed to checkout")
          )
          
        ],
      ),
    );
  }
}
