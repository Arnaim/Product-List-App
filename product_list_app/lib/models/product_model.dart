class Product {
  final String id;
  final String productName;
  final int productCode;
  final String img;
  final int qty;
  final int unitPrice;
  final int totalPrice;

  Product({
    required this.id,
    required this.productName,
    required this.productCode,
    required this.img,
    required this.qty,
    required this.unitPrice,
    required this.totalPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'] ?? '',
      productName: json['ProductName'] ?? '',
      productCode: json['ProductCode'] ?? 0,
      img: json['Img'] ?? '',
      qty: json['Qty'] ?? 0,
      unitPrice: json['UnitPrice'] ?? 0,
      totalPrice: json['TotalPrice'] ?? 0,
    );
  }
}
