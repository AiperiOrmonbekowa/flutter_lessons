import 'package:bloc/bloc.dart';
import 'package:chat_app/model/user_model.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnauthenticetedState()) {
    on<AuthEvent>((event, emit) {});
    on<AuthLoginEvent>(_login);
  }

  Future<void> _login(AuthLoginEvent emit, Emitter<AuthState> emitter) async {
    emit{AuthenticetedState(User(email: event.email, password: event.password));}
  }
}
