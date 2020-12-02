import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:meta/meta.dart';

part 'edit_profile_cubit.freezed.dart';

part 'edit_profile_state.dart';

@lazySingleton
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileState.initial());

  void profileSaved() {
    emit(state.copyWith(isSaved: true));
  }

  void reset() {
    emit(EditProfileState.initial());
  }
}
