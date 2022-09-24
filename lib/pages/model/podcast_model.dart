// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
       required this.success,
        required this.message,
       required this.records,
       required this.totalrecords,
    });

    bool success;
    String message;
    List<Record> records;
    int totalrecords;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        success: json["success"],
        message: json["message"],
        records: List<Record>.from(json["records"].map((x) => Record.fromJson(x))),
        totalrecords: json["totalrecords"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "records": List<dynamic>.from(records.map((x) => x.toJson())),
        "totalrecords": totalrecords,
    };
}

class Record {
    Record({
       required this.id,
      //  required this.noOfEpisode,
       required this.authorsName,
       required this.categoryName,
       required this.createdAt,
      required  this.createdBy,
       required this.isDelete,
       required this.title,
      //  required this.description,
       required this.authorsId,
       required this.categoryId,
       required this.isImage,
       required this.updatedAt,
      //  required this.updatedBy,
       required this.isActive,
    });

    int id;
    // int noOfEpisode;
    List<dynamic> authorsName;
    List<dynamic> categoryName;
    DateTime createdAt;
    int createdBy;
    bool isDelete;
    String title;
    // Description description;
    List<int> authorsId;
    List<int> categoryId;
    bool isImage;
    dynamic updatedAt;
    // int updatedBy;
    bool isActive;

    factory Record.fromJson(Map<String, dynamic> json) => Record(
        id: json["id"],
        // noOfEpisode: json["no_of_episode"] == null ? null : json["no_of_episode"],
        authorsName: List<dynamic>.from(json["authors_name"].map((x) => x)),
        categoryName: List<dynamic>.from(json["category_name"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        isDelete: json["is_delete"],
        title: json["title"],
        // description: descriptionValues.map[json["description"]],
        authorsId: List<int>.from(json["authors_id"].map((x) => x)),
        categoryId: List<int>.from(json["category_id"].map((x) => x)),
        isImage: json["is_image"],
        updatedAt: json["updated_at"],
        // updatedBy: json["updated_by"] == null ? null : json["updated_by"],
        isActive: json["is_active"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        // "no_of_episode": noOfEpisode == null ? null : noOfEpisode,
        "authors_name": List<dynamic>.from(authorsName.map((x) => x)),
        "category_name": List<dynamic>.from(categoryName.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "created_by": createdBy,
        "is_delete": isDelete,
        "title": title,
        // "description": descriptionValues.reverse[description],
        "authors_id": List<dynamic>.from(authorsId.map((x) => x)),
        "category_id": List<dynamic>.from(categoryId.map((x) => x)),
        "is_image": isImage,
        "updated_at": updatedAt,
        // "updated_by": updatedBy == null ? null : updatedBy,
        "is_active": isActive,
    };
}

// enum Description { THIS_IS_MY_PODCAST }

// final descriptionValues = EnumValues({
//     "This is my podcast": Description.THIS_IS_MY_PODCAST
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(requied this.map,);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
