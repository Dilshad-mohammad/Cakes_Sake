import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 33.01,
                backgroundImage: AssetImage(categories[index].imagePath),
              ),
              const SizedBox(height: 8),
              Text(
                categories[index].name,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ],
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

List<Category> categories = [
  Category(name: 'Cream Cakes', imagePath: 'assets/logos/1-1.png'),
  Category(name: 'Dry Cakes', imagePath: 'assets/logos/1-2.png'),
  Category(name: 'Mud Slices Pastry', imagePath: 'assets/logos/1-3.png'),
  Category(name: 'Cake Desserts', imagePath: 'assets/logos/1-4.png'),
  Category(name: 'Muffins', imagePath: 'assets/logos/2-1.png'),
  Category(name: 'Lava Cake', imagePath: 'assets/logos/2-2.png'),
  Category(name: 'Lava Cake', imagePath: 'assets/logos/2-3.png'),
  Category(name: 'Gluten Free', imagePath: 'assets/logos/2-4.png'),
  Category(name: 'Donuts', imagePath: 'assets/logos/2-2.png'),
  Category(name: 'Donuts', imagePath: 'assets/logos/1-2.png'),
];
