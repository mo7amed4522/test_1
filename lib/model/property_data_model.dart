// ignore_for_file: unnecessary_this, prefer_collection_literals

class PropertyData {
  int? id;
  int? userId;
  String? name;
  String? description;
  String? price;
  String? location;
  //String? images;
  String? video;
  String? createdAt;
  String? updatedAt;
  User? user;

  PropertyData(
      {this.id,
      this.userId,
      this.name,
      this.description,
      this.price,
      this.location,
      //this.images,
      this.video,
      this.createdAt,
      this.updatedAt,
      this.user});

  PropertyData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    location = json['location'];
    //images = json['images'];
    video = json['video'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['location'] = this.location;
    //data['images'] = this.images;
    data['video'] = this.video;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? role;
  String? profileImage;
  String? introVideo;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.role,
      this.profileImage,
      this.introVideo,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    role = json['role'];
    profileImage = json['profile_image'];
    introVideo = json['intro_video'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['role'] = this.role;
    data['profile_image'] = this.profileImage;
    data['intro_video'] = this.introVideo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
