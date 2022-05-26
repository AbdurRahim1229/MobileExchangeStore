class usedProduct {
  final String id;

  final String title;

  final String description;

  final String imageurl;
  final double price;

  usedProduct(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageurl,
      required this.price});
}

List<usedProduct> mobiles = [
  usedProduct(
    id: '1',
    title: "Oneplus Nord N100",
    price: 20000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        "https://www.mobiledokan.com/wp-content/uploads/2021/09/OnePlus-Nord-N100-image.jpg",
  ),
  usedProduct(
    id: '2',
    title: "Samsung A12",
    price: 16000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/03/Samsung-Galaxy-A12-image.jpg',
  ),
  usedProduct(
    id: '3',
    title: "Xiaomi Poco M3",
    price: 18500,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2020/12/Xiaomi-Poco-M3.jpg',
  ),
  usedProduct(
    id: '4',
    title: "Oppo F15",
    price: 21000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2020/04/Oppo-F15-new.jpg',
  ),
  usedProduct(
    id: '5',
    title: "Redmi note 9",
    price: 20000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2020/04/Xiaomi-Redmi-Note-9-white-new.jpg',
  ),
  usedProduct(
    id: '6',
    title: "Samsung M32",
    price: 22000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/07/Samsung-Galaxy-M32-image.jpg',
  ),
  usedProduct(
    id: '7',
    title: "Walton Primo Rx8",
    price: 16000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2021/04/Walton-Primo-RX8-image.jpg',
  ),
  usedProduct(
    id: '8',
    title: "RealME 7i",
    price: 18000,
    description:
        'Ram:4-8GB , Rom:64GB/128GB storage, Display: 6.4 inch Camera : 64MP  Battery : 6000mAh Li-Ion ',
    imageurl:
        'https://www.mobiledokan.com/wp-content/uploads/2020/09/Realme-7i.jpg',
  ),
];
