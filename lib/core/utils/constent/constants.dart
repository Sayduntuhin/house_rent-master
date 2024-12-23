import 'package:home_rent/feature/launch/data/model/house_model.dart';


const images = [
  "https://cdn.pixabay.com/photo/2022/04/10/19/33/house-7124141_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
  "https://cdn.pixabay.com/photo/2022/04/10/19/33/house-7124141_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/09/09/21/58/house-2733660_1280.jpg",
];

List<HouseModel> houses = [
  HouseModel(
    title: "Orchard House",
    address: "Jl Sultan Iskandar Muda",
    bedrooms: 4,
    bathrooms: 3,
    description: 'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    imageUrl: "https://images.unsplash.com/photo-1516281717304-181e285c6e58?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rentAmount: 2500000000.0,
    ownerName: "John Doe",
    ownerImage: "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  HouseModel(
    title: "The Hollies House",
    address: "Jl Cilandak Tengah",
    bedrooms: 5,
    bathrooms: 4,
    description :'The 4 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    imageUrl: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rentAmount: 2000000000.0,
    ownerName: "Jane Smith",
    ownerImage: "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww"
  ),
  HouseModel(
    title: "The Rent House 3",
    address: "Jl Kebayoran Lama",
    bedrooms: 6,
    bathrooms: 4,
    description: 'The 5 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    imageUrl: "https://plus.unsplash.com/premium_photo-1685305380695-90e58a33d4e9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cmVudGFsJTIwaG91c2V8ZW58MHx8MHx8fDA%3D",
    rentAmount: 3000000000.0,
    ownerName: "Robert Brown", ownerImage: "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"

  ),
  HouseModel(
    title: "The Rent House 4",
    address: "Jl Sunset Boulevard",
    bedrooms: 3,
    bathrooms: 2,
    description:'The 6 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    imageUrl: "https://plus.unsplash.com/premium_photo-1685305676840-7084e0694737?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rentAmount: 1500000000.0,
    ownerName: "Emily Davis", ownerImage: "https://plus.unsplash.com/premium_photo-1689539137236-b68e436248de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww"

  ),
  HouseModel(
    title: "The Rent House 5",
    address: "Jl Puncak Indah",
    bedrooms: 8,
    bathrooms: 5,
    description:'The 7 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
    imageUrl: "https://images.unsplash.com/photo-1601830254446-62239192c1f3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    rentAmount: 5000000000.0,
    ownerName: "Michael Johnson",
    ownerImage: "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"

  ),
];

