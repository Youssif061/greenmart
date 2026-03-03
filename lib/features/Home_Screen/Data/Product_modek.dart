class Productmodek {
  final String id;
  final String Image;
  final String Name;
  final String quantity;
  final double Price;

  Productmodek({
    required this.Image,
    required this.Name,
    required this.Price,
    required this.id,
    required this.quantity,
  });
}

List<Productmodek> offers = [
  Productmodek(
    Image:
        'https://static.vecteezy.com/system/resources/thumbnails/038/772/807/small/ai-generated-isolated-apple-on-transparent-background-generative-ai-png.png',
    id: '1',
    Name: "Apple",
    Price: 4.99,
    quantity: "1KG",
  ),

  Productmodek(
    id: '2',
    Image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOCI6WsYZe9TDC80qyQ7vY017i-Zle97KB0w&s',
    Name: "Bananas",
    Price: 4.99,
    quantity: "3KG",
  ),

  Productmodek(
    id: '3',
    Image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0jBWZPatcbjmOQFwNDZHcS7A5pzysnH07xA&s',

    Name: "Bell Pepper Red",
    Price: 4.99,
    quantity: "4KG",
  ),

  Productmodek(
    id: '4',
    Image: 'https://pngimg.com/d/ginger_PNG16778.png',
    Name: "Ginger",
    Price: 4.99,
    quantity: "2KG",
  ),
];
