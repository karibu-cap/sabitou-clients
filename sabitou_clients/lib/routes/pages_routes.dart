/// Interface for routes with parameters.
abstract class PagesRoutesWithParams<T> {
  /// Returns the pattern URL associated with the route.
  String get pattern;

  /// Creates the route URL.
  String create(T parameters);
}

/// Interface for routes without parameters.
abstract class PagesRoutesNoParams {
  /// Returns the pattern URL associated with the route.
  String get pattern;

  /// Creates the route URL.
  String create() => pattern;
}

/// The pages routes.
abstract class PagesRoutes {
  /// The  home route.
  /// eg: http:localhost:8080.
  static final home = _HomeRoute();

  /// The  transfer route.
  /// eg: http:localhost:8080/connection.
  static final connection = _ConnectionRoute();

  /// The  transfer route.
  /// eg: http:localhost:8080/registration.
  static final registration = _RegistrationRoute();
}

class _HomeRoute extends PagesRoutesNoParams {
  @override
  String get pattern => '/';
}

class _ConnectionRoute extends PagesRoutesNoParams {
  @override
  String get pattern => '/connection';
}

class _RegistrationRoute extends PagesRoutesNoParams {
  @override
  String get pattern => '/registration';
}
