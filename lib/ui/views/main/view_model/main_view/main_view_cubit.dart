import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'main_view_cubit.freezed.dart';

part 'main_view_state.dart';

class MainViewCubit extends Cubit<MainViewState> {
  MainViewCubit(int page) : super(MainViewState.initial(page));

  void changePage(int page) {
    state.pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    emit(state.copyWith(
      currentIndex: page,
    ));
  }
}
