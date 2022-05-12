
class Products {
  int? id;
  String? title;
  String? description;
  String? image;
  double? price;
  int? cateID;
  int? quantity;

  Products(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.price,
      this.cateID,
        this.quantity,
      });

  static List<Products> init() {
    List<Products> data = [
      Products(
          id: 1,
          title: "Bread",
          description:
              "Founded as a bakery brand in Singapore in 2000 and listed on the SGX in 2003. It has since expanded to more than 1,000 retail stores spread across 17 markets. Its brand portfolio comprises BreadTalk, Toast Box, Food Republic, Food Junction, Din Tai Fung, Bread Society, Thye Moh Chan, The Icing Room, Sō and Nayuki in Singapore. Din Tai Fung, Song Fa Bak Kut Teh, Wu Pao Chun and Nayuki are franchised brands",
          image: "assets/foods/ic_black_coffee.png",
          price: 6.0,
          cateID: 1),
      Products(
          id: 2,
          title: "Coffee",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 7.0,
          cateID: 2),
      Products(
          id: 3,
          title: "Tea",
          description:
              "Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured or fresh leaves of the Camellia sinensis, an evergreen shrub native to East Asia.[3] After water, it is the most widely consumed drink in the world.[4] There are many different types of tea; some, like Darjeeling and Chinese greens, have a cooling, slightly bitter, and astringent flavour,[5] while others have vastly different profiles that include sweet, nutty, floral, or grassy notes. Tea has a stimulating effect in humans primarily by its caffeine conten",
          image: "assets/foods/ic_black_coffee.png",
          price: 9.0,
          cateID: 3),
      Products(
          id: 4,
          title: "Mile",
          description:
              "Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured or fresh leaves of the Camellia sinensis, an evergreen shrub native to East Asia.[3] After water, it is the most widely consumed drink in the world.[4] There are many different types of tea; some, like Darjeeling and Chinese greens, have a cooling, slightly bitter, and astringent flavour,[5] while others have vastly different profiles that include sweet, nutty, floral, or grassy notes. Tea has a stimulating effect in humans primarily by its caffeine conten",
          image: "assets/foods/ic_black_coffee.png",
          price: 5.0,
          cateID: 4),
      Products(
          id: 5,
          title: "Tea",
          description:
              "Founded as a bakery brand in Singapore in 2000 and listed on the SGX in 2003. It has since expanded to more than 1,000 retail stores spread across 17 markets. Its brand portfolio comprises BreadTalk, Toast Box, Food Republic, Food Junction, Din Tai Fung, Bread Society, Thye Moh Chan, The Icing Room, Sō and Nayuki in Singapore. Din Tai Fung, Song Fa Bak Kut Teh, Wu Pao Chun and Nayuki are franchised brands",
          image: "assets/foods/ic_black_coffee.png",
          price: 4.0,
          cateID: 5),
      Products(
          id: 6,
          title: "Milk & Tea",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 3.0,
          cateID: 2),
      Products(
          id: 7,
          title: "Cookies",
          description:
              "Founded as a bakery brand in Singapore in 2000 and listed on the SGX in 2003. It has since expanded to more than 1,000 retail stores spread across 17 markets. Its brand portfolio comprises BreadTalk, Toast Box, Food Republic, Food Junction, Din Tai Fung, Bread Society, Thye Moh Chan, The Icing Room, Sō and Nayuki in Singapore. Din Tai Fung, Song Fa Bak Kut Teh, Wu Pao Chun and Nayuki are franchised brands",
          image: "assets/foods/ic_black_coffee.png",
          price: 8.0,
          cateID: 1),
      Products(
          id: 8,
          title: "Water",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 1.0,
          cateID: 3),
      Products(
          id: 9,
          title: "Melon",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 2.0,
          cateID: 4),
      Products(
          id: 10,
          title: "Noodles",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 11.0,
          cateID: 5),
      Products(
          id: 11,
          title: "Bacon",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 10.0,
          cateID: 1),
      Products(
          id: 12,
          title: "Banana",
          description:
              "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. When coffee berries turn from green to bright red in color – indicating ripeness – they are picked, processed, and dried.[2] Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.",
          image: "assets/foods/ic_black_coffee.png",
          price: 12.0,
          cateID: 3),
    ];

    return data;
  }
}
