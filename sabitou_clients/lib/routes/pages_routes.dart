/// Interface for routes with parameters.
abstract class PagesRoutesWithParams<T> {
  /// Returns the pattern URL associated with the route.
  String get pattern;

  /// Creates the route URL.
  String create(T parameters);
}

/// Interface for routes without parameters.
abstract class PagesRoutesWithNoParams {
  /// Returns the pattern URL associated with the route.
  String get pattern;

  /// Creates the route URL.
  String create() => pattern;
}

/// The pages routes.
abstract class PagesRoutes {
  /// The home route, for example, http:localhost:8080.
  static final home = _HomeRoute();

  /// The transfer route, for example, http:localhost:8080/connection.
  static final connection = _ConnectionRoute();

  /// The transfer route For example: http://localhost:8080/registration.
  static final registration = _RegistrationRoute();

  /// The dashboard route, for example, http:localhost:8080/stores.
  static final stores = _StoresRoute();

  /// The dashboard route, for example, http:localhost:8080/dashboard.
  static final dashboard = _DashboardRoute();
}

class _HomeRoute extends PagesRoutesWithNoParams {
  @override
  String get pattern => '/';
}

class _ConnectionRoute extends PagesRoutesWithNoParams {
  @override
  String get pattern => '/connection';
}

class _RegistrationRoute extends PagesRoutesWithNoParams {
  @override
  String get pattern => '/registration';
}

class _StoresRoute extends PagesRoutesWithNoParams {
  @override
  String get pattern => '/stocks';
}

class _DashboardRoute extends PagesRoutesWithNoParams {
  @override
  String get pattern => '/dashboard';
}

/// The dashboard parameters.
class DashboardParameters {
  /// The key of the item.
  static const String keyItem = 'item';

  /// The item label.
  final String? itemLabel;

  /// Constructors of new [DashboardParameters].
  DashboardParameters({this.itemLabel});
}

/// The dashboard items.
enum DashboardLabelPage {
  /// The dashboard store.
  dashboard,

  /// The dashboard store.
  stores,

  /// The dashboard settings.
  settings,
}
