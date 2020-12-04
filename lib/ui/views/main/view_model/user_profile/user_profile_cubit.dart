import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/ui/shared/shared_wigdets.dart';
import 'package:meta/meta.dart';

part 'user_profile_cubit.freezed.dart';

part 'user_profile_state.dart';

@injectable
class UserProfileCubit extends Cubit<UserProfileState> {
  final UserRepo _userRepo;

  UserProfileCubit(this._userRepo) : super(UserProfileState.initial());

  void getUserDetails() async {
    emit(UserProfileState.loading());

    try {
      final result = await _userRepo.userDataRemote;
      result.fold(
        (l) => emit(UserProfileState.error(l)),
        (r) => emit(UserProfileState.loaded(
          userData: r,
          fullName: r.userData.data.profile.legalName ?? "",
          profilePicture: r.userData.data.profile.fileName ?? "",
        )),
      );
    } on Error {
      emit(UserProfileState.error(
          SystemGlitch(message: "Error occurred in Bloc")));
    }
  }

  Future<void> updateProfilePictureImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final path = await pickedFile.path;
      final result = await _userRepo.uploadProfilePicture(File(path));
      result.fold(
        (failure) => showErrorSnackBar(context, failure.message),
        (success) => getUserDetails(),
      );
    }
  }
}
