import 'dart:convert';

LinkedInModel linkedInModelFromJson(String str) =>
    LinkedInModel.fromJson(json.decode(str));

String linkedInModelToJson(LinkedInModel data) => json.encode(data.toJson());

class LinkedInModel {
  bool? success;
  String? email;
  String? emailType;
  Person? person;
  Company? company;
  int? creditsLeft;
  int? rateLimitLeft;

  LinkedInModel({
    this.success,
    this.email,
    this.emailType,
    this.person,
    this.company,
    this.creditsLeft,
    this.rateLimitLeft,
  });

  factory LinkedInModel.fromJson(Map<String, dynamic> json) => LinkedInModel(
        success: json["success"],
        email: json["email"],
        emailType: json["emailType"],
        person: json["person"] == null ? null : Person.fromJson(json["person"]),
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
        creditsLeft: json["credits_left"],
        rateLimitLeft: json["rate_limit_left"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "email": email,
        "emailType": emailType,
        "person": person?.toJson(),
        "company": company?.toJson(),
        "credits_left": creditsLeft,
        "rate_limit_left": rateLimitLeft,
      };
}

class Company {
  String? websiteUrl;
  String? name;
  String? logo;
  int? employeeCount;
  String? description;
  dynamic tagline;
  List<String>? specialities;
  Headquarter? headquarter;
  FoundedOn? foundedOn;
  String? industry;
  String? universalName;
  String? linkedInUrl;
  String? linkedInId;
  String? linkedinUrl;
  String? linkedinId;

  Company({
    this.websiteUrl,
    this.name,
    this.logo,
    this.employeeCount,
    this.description,
    this.tagline,
    this.specialities,
    this.headquarter,
    this.foundedOn,
    this.industry,
    this.universalName,
    this.linkedInUrl,
    this.linkedInId,
    this.linkedinUrl,
    this.linkedinId,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        websiteUrl: json["websiteUrl"],
        name: json["name"],
        logo: json["logo"],
        employeeCount: json["employeeCount"],
        description: json["description"],
        tagline: json["tagline"],
        specialities: json["specialities"] == null
            ? []
            : List<String>.from(json["specialities"]!.map((x) => x)),
        headquarter: json["headquarter"] == null
            ? null
            : Headquarter.fromJson(json["headquarter"]),
        foundedOn: json["foundedOn"] == null
            ? null
            : FoundedOn.fromJson(json["foundedOn"]),
        industry: json["industry"],
        universalName: json["universalName"],
        linkedInUrl: json["linkedInUrl"],
        linkedInId: json["linkedInId"],
        linkedinUrl: json["linkedinUrl"],
        linkedinId: json["linkedinId"],
      );

  Map<String, dynamic> toJson() => {
        "websiteUrl": websiteUrl,
        "name": name,
        "logo": logo,
        "employeeCount": employeeCount,
        "description": description,
        "tagline": tagline,
        "specialities": specialities == null
            ? []
            : List<dynamic>.from(specialities!.map((x) => x)),
        "headquarter": headquarter?.toJson(),
        "foundedOn": foundedOn?.toJson(),
        "industry": industry,
        "universalName": universalName,
        "linkedInUrl": linkedInUrl,
        "linkedInId": linkedInId,
        "linkedinUrl": linkedinUrl,
        "linkedinId": linkedinId,
      };
}

class FoundedOn {
  int? year;

  FoundedOn({
    this.year,
  });

  factory FoundedOn.fromJson(Map<String, dynamic> json) => FoundedOn(
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
      };
}

class Headquarter {
  String? country;
  String? geographicArea;
  String? city;
  String? postalCode;

  Headquarter({
    this.country,
    this.geographicArea,
    this.city,
    this.postalCode,
  });

  factory Headquarter.fromJson(Map<String, dynamic> json) => Headquarter(
        country: json["country"],
        geographicArea: json["geographicArea"],
        city: json["city"],
        postalCode: json["postalCode"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "geographicArea": geographicArea,
        "city": city,
        "postalCode": postalCode,
      };
}

class Person {
  String? publicIdentifier;
  String? linkedInIdentifier;
  String? firstName;
  String? lastName;
  String? headline;
  String? location;
  String? photoUrl;
  Positions? positions;
  CreationDate? creationDate;
  int? followerCount;
  Schools? schools;
  List<String>? skills;
  List<dynamic>? languages;
  String? linkedInUrl;

  Person({
    this.publicIdentifier,
    this.linkedInIdentifier,
    this.firstName,
    this.lastName,
    this.headline,
    this.location,
    this.photoUrl,
    this.positions,
    this.creationDate,
    this.followerCount,
    this.schools,
    this.skills,
    this.languages,
    this.linkedInUrl,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        publicIdentifier: json["publicIdentifier"],
        linkedInIdentifier: json["linkedInIdentifier"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        headline: json["headline"],
        location: json["location"],
        photoUrl: json["photoUrl"],
        positions: json["positions"] == null
            ? null
            : Positions.fromJson(json["positions"]),
        creationDate: json["creationDate"] == null
            ? null
            : CreationDate.fromJson(json["creationDate"]),
        followerCount: json["followerCount"],
        schools:
            json["schools"] == null ? null : Schools.fromJson(json["schools"]),
        skills: json["skills"] == null
            ? []
            : List<String>.from(json["skills"]!.map((x) => x)),
        languages: json["languages"] == null
            ? []
            : List<dynamic>.from(json["languages"]!.map((x) => x)),
        linkedInUrl: json["linkedInUrl"],
      );

  Map<String, dynamic> toJson() => {
        "publicIdentifier": publicIdentifier,
        "linkedInIdentifier": linkedInIdentifier,
        "firstName": firstName,
        "lastName": lastName,
        "headline": headline,
        "location": location,
        "photoUrl": photoUrl,
        "positions": positions?.toJson(),
        "creationDate": creationDate?.toJson(),
        "followerCount": followerCount,
        "schools": schools?.toJson(),
        "skills":
            skills == null ? [] : List<dynamic>.from(skills!.map((x) => x)),
        "languages": languages == null
            ? []
            : List<dynamic>.from(languages!.map((x) => x)),
        "linkedInUrl": linkedInUrl,
      };
}

class CreationDate {
  int? month;
  int? year;

  CreationDate({
    this.month,
    this.year,
  });

  factory CreationDate.fromJson(Map<String, dynamic> json) => CreationDate(
        month: json["month"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "month": month,
        "year": year,
      };
}

class Positions {
  int? positionsCount;
  List<PositionHistory>? positionHistory;

  Positions({
    this.positionsCount,
    this.positionHistory,
  });

  factory Positions.fromJson(Map<String, dynamic> json) => Positions(
        positionsCount: json["positionsCount"],
        positionHistory: json["positionHistory"] == null
            ? []
            : List<PositionHistory>.from(json["positionHistory"]!
                .map((x) => PositionHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "positionsCount": positionsCount,
        "positionHistory": positionHistory == null
            ? []
            : List<dynamic>.from(positionHistory!.map((x) => x.toJson())),
      };
}

class PositionHistory {
  StartEndDate? startEndDate;
  String? title;
  String? contractType;
  String? description;
  String? companyName;
  String? companyLogo;
  String? linkedInUrl;
  String? linkedInId;
  String? companyLocation;

  PositionHistory({
    this.startEndDate,
    this.title,
    this.contractType,
    this.description,
    this.companyName,
    this.companyLogo,
    this.linkedInUrl,
    this.linkedInId,
    this.companyLocation,
  });

  factory PositionHistory.fromJson(Map<String, dynamic> json) =>
      PositionHistory(
        startEndDate: json["startEndDate"] == null
            ? null
            : StartEndDate.fromJson(json["startEndDate"]),
        title: json["title"],
        contractType: json["contractType"],
        description: json["description"],
        companyName: json["companyName"],
        companyLogo: json["companyLogo"],
        linkedInUrl: json["linkedInUrl"],
        linkedInId: json["linkedInId"],
        companyLocation: json["companyLocation"],
      );

  Map<String, dynamic> toJson() => {
        "startEndDate": startEndDate?.toJson(),
        "title": title,
        "contractType": contractType,
        "description": description,
        "companyName": companyName,
        "companyLogo": companyLogo,
        "linkedInUrl": linkedInUrl,
        "linkedInId": linkedInId,
        "companyLocation": companyLocation,
      };
}

class StartEndDate {
  CreationDate? start;
  CreationDate? end;

  StartEndDate({
    this.start,
    this.end,
  });

  factory StartEndDate.fromJson(Map<String, dynamic> json) => StartEndDate(
        start:
            json["start"] == null ? null : CreationDate.fromJson(json["start"]),
        end: json["end"] == null ? null : CreationDate.fromJson(json["end"]),
      );

  Map<String, dynamic> toJson() => {
        "start": start?.toJson(),
        "end": end?.toJson(),
      };
}

class Schools {
  int? educationsCount;
  List<EducationHistory>? educationHistory;

  Schools({
    this.educationsCount,
    this.educationHistory,
  });

  factory Schools.fromJson(Map<String, dynamic> json) => Schools(
        educationsCount: json["educationsCount"],
        educationHistory: json["educationHistory"] == null
            ? []
            : List<EducationHistory>.from(json["educationHistory"]!
                .map((x) => EducationHistory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "educationsCount": educationsCount,
        "educationHistory": educationHistory == null
            ? []
            : List<dynamic>.from(educationHistory!.map((x) => x.toJson())),
      };
}

class EducationHistory {
  StartEndDate? startEndDate;
  String? schoolName;
  String? degreeName;
  String? fieldOfStudy;
  String? schoolLogo;
  String? linkedInUrl;

  EducationHistory({
    this.startEndDate,
    this.schoolName,
    this.degreeName,
    this.fieldOfStudy,
    this.schoolLogo,
    this.linkedInUrl,
  });

  factory EducationHistory.fromJson(Map<String, dynamic> json) =>
      EducationHistory(
        startEndDate: json["startEndDate"] == null
            ? null
            : StartEndDate.fromJson(json["startEndDate"]),
        schoolName: json["schoolName"],
        degreeName: json["degreeName"],
        fieldOfStudy: json["fieldOfStudy"],
        schoolLogo: json["schoolLogo"],
        linkedInUrl: json["linkedInUrl"],
      );

  Map<String, dynamic> toJson() => {
        "startEndDate": startEndDate?.toJson(),
        "schoolName": schoolName,
        "degreeName": degreeName,
        "fieldOfStudy": fieldOfStudy,
        "schoolLogo": schoolLogo,
        "linkedInUrl": linkedInUrl,
      };
}
