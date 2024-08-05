import 'package:flutter/material.dart';
import 'package:quick_note/model/image_model.dart';

class Bab5VerticalGridviewPage extends StatefulWidget {
  const Bab5VerticalGridviewPage({super.key});

  @override
  State<Bab5VerticalGridviewPage> createState() => _Bab5VerticalGridviewPageState();
}

class _Bab5VerticalGridviewPageState extends State<Bab5VerticalGridviewPage> {

  List<ImageModel> listImage = <ImageModel>[
    ImageModel(
      image: 'assets/images/malioboro.jpg', 
      username: 'Andi Santoso',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/malioboro2.jpg', 
      username: 'Rina Kusuma',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/malioboro3.jpg', 
      username: 'Budi Prasetyo',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/malioboro4.jpg', 
      username: 'Siti Aisyah',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/malioboro5.jpg', 
      username: 'Dedi Saputra',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/malioboro6.jpg', 
      username: 'Maya Sari',
      location: 'Malioboro, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/prambanan.jpg', 
      username: 'Agus Wijaya',
      location: 'Candi Prambanan, Yogyakarta'
    ),
    ImageModel(
      image: 'assets/images/tugu.jpg', 
      username: 'Intan Permata',
      location: 'Tugu Yogyakarta'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vertical GridView',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Image Grid',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 3.0,),
              const Text(
                'Gunakan: GridView.builder, Column, ClipRRect, AspectRatio, Image.asset, Text dan SizedBox',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 16.0,),
              GridView.builder(
                itemCount: listImage.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 1/1.3
                ),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: AspectRatio(
                        aspectRatio: 1/1,
                        child: Image.asset(
                          listImage[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Text(
                      listImage[index].username,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 3.0,),
                    Text(
                      listImage[index].location,
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              )
            ],
          ),
        )
      ),
    );
  }
}