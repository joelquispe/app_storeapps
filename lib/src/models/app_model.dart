class Appmodel {
  String? name;
  String? description;
  String? image;
  String? front;
  String? developer;
  String? version;
  String? email;
  String? web;
  String? category;

  Appmodel(
      {this.name,
      this.description,
      this.image,
      this.front,
      this.developer,
      this.version,
      this.email,
      this.web,
      this.category});

  Appmodel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    front = json['front'];
    developer = json['developer'];
    version = json['version'];
    email = json['email'];
    web = json['web'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['front'] = this.front;
    data['developer'] = this.developer;
    data['version'] = this.version;
    data['email'] = this.email;
    data['web'] = this.web;
    data['category'] = this.category;
    return data;
  }
}
