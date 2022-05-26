class Product {
  final String id;

  final String title;

  final String description;

  final String imageurl;
  final int price;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageurl,
      required this.price});
}

List<Product> mobiles = [
  Product(
    id: '1',
    title: "Oneplus 8",
    price: 55000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        "https://www.mobiledokan.com/wp-content/uploads/2020/04/Oneplus-8-interstellar-glow.jpg",
  ),
  Product(
    id: '2',
    title: "I phone 13 pro max",
    price: 160000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/10/Apple-iPhone-13-Pro-Max-image.jpg',
  ),
  Product(
    id: '3',
    title: "Vivo v21",
    price: 32000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/05/Vivo-V21-image.jpg',
  ),
  Product(
    id: '4',
    title: "RealME GT Master",
    price: 33000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/09/Realme-GT-Master-Edition-image.jpg',
  ),
  Product(
    id: '5',
    title: "Xiaomi 11t",
    price: 49000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/12/Xiaomi-11T-image.jpg',
  ),
  Product(
    id: '6',
    title: "Samsung A52 5G",
    price: 42000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/09/Samsung-Galaxy-A52s-5G-image.jpg',
  ),
  Product(
    id: '7',
    title: "Oppo Reno 6",
    price: 31000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        "https://www.mobiledokan.com/wp-content/uploads/2021/11/Oppo-Reno-6-image.jpg",
  ),
  Product(
    id: '8',
    title: "Redmi Note 10 pro max",
    price: 29000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        "https://www.mobiledokan.com/wp-content/uploads/2021/06/Xiaomi-Redmi-Note-10-Pro-Max-image.jpg",
  ),
];
