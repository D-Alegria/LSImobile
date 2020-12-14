import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'edit_profile_cubit.freezed.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(TickerProvider provider)
      : super(EditProfileState.initial(provider));

  void changeForm(int page) => state.tabController.animateTo(page);

  @override
  Future<void> close() {
    return super.close();
  }
}
