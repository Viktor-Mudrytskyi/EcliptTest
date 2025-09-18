import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_overlay_cubit.freezed.dart';
part 'loader_overlay_state.dart';

class LoaderOverlayCubit extends Cubit<LoaderOverlayState> {
  LoaderOverlayCubit() : super(const LoaderOverlayState(isLoading: false));

  void showLoading() {
    emit(const LoaderOverlayState(isLoading: true));
  }

  void hideLoading() {
    emit(const LoaderOverlayState(isLoading: false));
  }
}
