import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/repository/auth_repository.dart';
import 'package:test_task_eclipt/repository/exception/remote_exception.dart';
import 'package:test_task_eclipt/repository/model/user_model.dart';
import 'package:test_task_eclipt/repository/user_repository.dart';
import 'package:test_task_eclipt/route/navigaion_mixin.dart';
import 'package:test_task_eclipt/view/global/mixin/overlay_mixin.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState>
    with OverlayMixin, NavigaionMixin {
  final UserRepository _userRepo;
  final AuthRepository _authRepository;

  UserBloc({
    required UserRepository userRepo,
    required AuthRepository authRepository,
  }) : _userRepo = userRepo,
       _authRepository = authRepository,
       super(const _Initial()) {
    on<UserEvent>(_mapper);
  }

  Future<void> _mapper(UserEvent event, Emitter<UserState> emit) async {
    await event.map(
      resolveState: (event) async => await _resolveState(event, emit),
      init: (event) async => await _init(event, emit),
    );
  }

  Future<void> _init(_Started event, Emitter<UserState> emit) async {
    add(const UserEvent.resolveState());
  }

  Future<void> _resolveState(
    _ResolveState event,
    Emitter<UserState> emit,
  ) async {
    final oldState = state;
    try {
      emit(const UserState.processing());
      final userData = await _userRepo.getUserInfo(
        _authRepository.currentUser?.uid ?? '',
      );
      if (userData == null) {
        emit(const UserState.profileSetUp());
        return;
      }
      if (userData.text.isNullOrEmpty) {
        emit(const UserState.profileSetUp());
      } else {
        emit(
          UserState.home(userData, _authRepository.currentUser?.email ?? ''),
        );
      }
    } on RemoteException catch (e) {
      showErrorToast(e.message);
      emit(oldState);
      return;
    }
  }
}
