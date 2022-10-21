class Collection{
  String? collectionImage;
  String? collectionType;
  double? price;
  String? name;
  

 Collection(this.collectionImage,this.collectionType,this.price,this.name, String about);

  static List<Collection> generateCollection(){
    return [

      Collection("assets/men.jpg", "Male",300.76,"Shirt",about),
      Collection("assets/kid.jpg", "kid",750.86,"Kid",about),
      Collection("assets/pet.jpg", "Pet",180.86,"Cat",about),
      Collection("assets/beauty.png", "Beauty",970.62,"Hair Oil",about),
      Collection("assets/men.jpg", "Male",700.87,"Shirt",about),
      Collection("assets/kid.jpg", "kid",400.65,"Dress",about),
      Collection("assets/pet.jpg", "Pet",8700.12,"Cat",about),
      Collection("assets/beauty.png", "Beauty",380.87,"Hair Oil",about),

    ];
  }
}

var about="Uniquely-modified and marked books reveal the types of interaction that characterized the American reading experience in the nineteenth and early-twentieth centuries. In Book Traces books, we find strikeouts, emendations, additions, and augmentations that alter the volume at hand. Ultimately, common readers’ interventions in their books illuminate the social constitution of texts and the ongoing evolution of books and their contents across time. Our goals now are to find these unique copies in the library stacks, edit their catalog records to make them discoverable, and to preserve them for future research. At the same time, Book Traces offers opportunities for student engagement and hands-on pedagogy involving book history, the nature of library print collections, and the past, present, and future of annotation.";

