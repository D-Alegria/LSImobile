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
    emit(state.copyWith(isLoading: true, glitch: null));

    try {
      final result = await _userRepo.userDataRemote;
      result.fold(
        (l) => emit(state.copyWith(isLoading: false, glitch: l)),
        (r) => emit(state.copyWith(isLoading: false, userData: r)),
      );
    } on Error {
      emit(
        state.copyWith(
          isLoading: false,
          glitch: SystemGlitch(message: "Error occurred in Bloc"),
        ),
      );
    }
  }

  Future<void> updateProfilePictureImage(BuildContext context) async {
    emit(state.copyWith(isLoading: true, glitch: null));
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final path = await pickedFile.path;
      final result = await _userRepo.uploadProfilePicture(File(path));
      result.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, glitch: null));
          showErrorSnackBar(context, failure.message);
        },
        (success) => getUserDetails(),
      );
    }
  }
}
