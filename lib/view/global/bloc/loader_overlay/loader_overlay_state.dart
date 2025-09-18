part of 'loader_overlay_cubit.dart';

@freezed
abstract class LoaderOverlayState with _$LoaderOverlayState {
  const factory LoaderOverlayState({required bool isLoading}) =
      _LoaderOverlayState;
}
