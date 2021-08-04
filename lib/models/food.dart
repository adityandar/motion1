part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.description,
    this.ingredients,
    this.name,
    this.picturePath,
    this.price,
    this.rate,
  });
}

Food mockFood = Food(
    id: 1,
    picturePath: "",
    // "https://img.inews.co.id/media/822/files/inews_new/2020/07/07/IMG_07072020_113032__822_x_430_piksel_.jpg",
    name: "Nasi Gila Mang Ogi",
    description: "Nasi Gila Mang Ogi adalah makanan pendeteksi covid-19.",
    price: 17300,
    rate: 3.3);
