// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      bvn: fields[14] as String,
      id: fields[0] as String,
      fullName: fields[1] as String,
      phoneNumber: fields[2] as String,
      email: fields[3] as String,
      profilePicture: fields[4] as String,
      password: fields[5] as String,
      isAuthenticated: fields[6] as bool,
      isVerified: fields[7] as bool,
      token: fields[8] as String,
      isBvnVerified: fields[13] as bool,
      isPersonalInfoFilled: fields[10] as bool,
      isEmergenceContactFilled: fields[11] as bool,
      isEduAndEmpInfoFilled: fields[12] as bool,
      isResidenceFilled: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.profilePicture)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.isAuthenticated)
      ..writeByte(7)
      ..write(obj.isVerified)
      ..writeByte(8)
      ..write(obj.token)
      ..writeByte(9)
      ..write(obj.isResidenceFilled)
      ..writeByte(10)
      ..write(obj.isPersonalInfoFilled)
      ..writeByte(11)
      ..write(obj.isEmergenceContactFilled)
      ..writeByte(12)
      ..write(obj.isEduAndEmpInfoFilled)
      ..writeByte(13)
      ..write(obj.isBvnVerified)
      ..writeByte(14)
      ..write(obj.bvn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
