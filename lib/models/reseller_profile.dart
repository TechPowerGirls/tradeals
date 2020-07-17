/* Class for User profile data. This is for User profile page */

class ResellerProfile {
  int resellerId;
  String resellerBusinessName;
  String firstName;
  String lastName;
  String fullName;
  String mobileNo;
  String emailId;
  String dateOfBirth;
  String gender;
  String maritalStatus;
  String kids;
  String education;
  String occupation;
  String addressLIne1;
  String addressLIne2;
  String postalCode;
  int cityId;
  int stateId;
  int countryId;

//String nameOnTheCheque;
//String bankName;
//String bankAccNo;
//String iFSCCode;

  ResellerProfile({
    this.resellerId,
    this.resellerBusinessName,
    this.firstName,
    this.lastName,
    this.fullName,
    this.mobileNo,
    this.emailId,
    this.dateOfBirth,
    this.gender,
    this.maritalStatus,
    this.kids,
    this.education,
    this.occupation,
    this.addressLIne1,
    this.addressLIne2,
    this.postalCode,
    this.cityId,
    this.stateId,
    this.countryId,
    //     this.nameOnTheCheque,
//      this.bankName,
//      this.bankAccNo,
//      this.iFSCCode
  });

  ResellerProfile.fromJson(Map<String, dynamic> json) {
    resellerId = json['ResellerId'];
    resellerBusinessName = json['ResellerBusinessName'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    fullName = json['FullName'];
    mobileNo = json['MobileNo'];
    emailId = json['EmailId'];
    dateOfBirth = json['DateOfBirth'];
    gender = json['Gender'];
    maritalStatus = json['MaritalStatus'];
    kids = json['Kids'];
    education = json['Education'];
    occupation = json['Occupation'];
    addressLIne1 = json['AddressLIne1'];
    addressLIne2 = json['AddressLIne2'];
    postalCode = json['PostalCode'];
    cityId = json['CityId'];
    stateId = json['StateId'];
    countryId = json['CountryId'];
//nameOnTheCheque = json['NameOnTheCheque'];
//bankName = json['BankName'];
//bankAccNo = json['BankAccNo'];
//iFSCCode = json['IFSCCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResellerId'] = this.resellerId;
    data['ResellerBusinessName'] = this.resellerBusinessName;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['FullName'] = this.fullName;
    data['MobileNo'] = this.mobileNo;
    data['EmailId'] = this.emailId;
    data['DateOfBirth'] = this.dateOfBirth;
    data['Gender'] = this.gender;
    data['MaritalStatus'] = this.maritalStatus;
    data['Kids'] = this.kids;
    data['Education'] = this.education;
    data['Occupation'] = this.occupation;
    data['AddressLIne1'] = this.addressLIne1;
    data['AddressLIne2'] = this.addressLIne2;
    data['PostalCode'] = this.postalCode;
    data['CityId'] = this.cityId;
    data['StateId'] = this.stateId;
    data['CountryId'] = this.countryId;
//  data['NameOnTheCheque'] = this.nameOnTheCheque;
//  data['BankName'] = this.bankName;
//  data['BankAccNo'] = this.bankAccNo;
//  data['IFSCCode'] = this.iFSCCode;
    return data;
  }
}
