import 'cart_item.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();

  factory CartManager() {
    return _instance;
  }

  CartManager._internal();

  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(CartItem item) {
    print('Adding item to cart: ${item.name}, Price: ${item.price}');
    final existingItem = _cartItems.firstWhere(
          (i) => i.name == item.name,
      orElse: () => CartItem(
        name: item.name,
        price: item.price,
        imageUrl: item.imageUrl,
      ),
    );

    if (_cartItems.contains(existingItem)) {
      existingItem.quantity++;
    } else {
      existingItem.quantity = 1;
      _cartItems.add(existingItem);
    }

    print('Cart items: ${_cartItems.map((i) => "${i.name} x ${i.quantity}, Total Price: ${i.totalPrice}")}');
  }

  void removeFromCart(CartItem item) {
    print('Removing item from cart: ${item.name}');


    final existingItem = _cartItems.firstWhere(
          (i) => i.name == item.name,
      orElse: () => CartItem(
        name: '',
        price: 0,
        imageUrl: '',
      ),
    );


    if (existingItem.name.isNotEmpty) {
      if (existingItem.quantity > 1) {
        existingItem.quantity--;
      } else {
        _cartItems.remove(existingItem);
      }
    }

    print('Cart items after removal: ${_cartItems.map((i) => "${i.name} x ${i.quantity}, Total Price: ${i.totalPrice}")}');
  }


  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.totalPrice);
}
