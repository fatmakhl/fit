// ignore_for_file: must_be_immutable

part of 'create_profile_confirm_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateProfileConfirm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateProfileConfirmEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CreateProfileConfirm widget is first created.
class CreateProfileConfirmInitialEvent extends CreateProfileConfirmEvent {
  @override
  List<Object?> get props => [];
}
