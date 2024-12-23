import 'package:get/get.dart';
import 'package:home_rent/feature/launch/data/model/house_model.dart';


class HomeDetailsController extends GetxController {
  var housedetails = HouseModel(title: "", address: "", bedrooms: 0, bathrooms: 0,
      description: "", imageUrl: "", rentAmount: 0.0, ownerName: "",ownerImage: '').obs;



  void setHoseDetils(HouseModel houseModel) {
    housedetails.value = houseModel;
  }
/*  void setImage(String image) {
    housedetails.value = image;
  }*/
}