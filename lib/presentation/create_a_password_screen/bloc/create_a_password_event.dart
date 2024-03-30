// ignore_for_file: must_be_immutable

part of 'create_a_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CreateAPassword widget is first created.
class CreateAPasswordInitialEvent extends CreateAPasswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateAPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateAPasswordEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
