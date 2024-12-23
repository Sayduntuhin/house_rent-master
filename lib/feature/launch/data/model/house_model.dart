class HouseModel {
  final String title;           // House name
  final String address;        // House address
  final int bedrooms;           // Number of bedrooms
  final int bathrooms;          // Number of bathrooms
  final String description;     // Short description
  final String imageUrl;        // Image URL
  final double rentAmount;      // Rent amount
  final String ownerName;       // Owner name
  final String ownerImage;

  HouseModel({
    required this.title,
    required this.address,
    required this.bedrooms ,
    required this.bathrooms,
    required this.description,
    required this.imageUrl,
    required this.rentAmount,
    required this.ownerName,
    required this.ownerImage
  });

  // Factory constructor for creating a House object from JSON
  factory HouseModel.fromJson(Map<String, dynamic> json) {
    return HouseModel(
      title: json['title'],
      address: json['subtitle'],
      bedrooms: json['bedrooms'],
      bathrooms: json['bathrooms'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      rentAmount: json['rentAmount'].toDouble(),
      ownerName: json['ownerName'],
      ownerImage: json['ownerImage']
    );
  }

  // Method for converting a House object to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': address,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'description': description,
      'imageUrl': imageUrl,
      'rentAmount': rentAmount,
      'ownerName': ownerName,
      'ownerImage': ownerImage,
    };
  }
}
