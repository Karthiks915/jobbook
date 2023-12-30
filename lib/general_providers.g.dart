// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerObserverHash() => r'63893966810c3778e02d9e5e0ad77d8490f72477';

/// See also [routerObserver].
@ProviderFor(routerObserver)
final routerObserverProvider = AutoDisposeProvider<RouterObserver>.internal(
  routerObserver,
  name: r'routerObserverProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$routerObserverHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterObserverRef = AutoDisposeProviderRef<RouterObserver>;
String _$routerObserverStreamHash() =>
    r'ef7875e9ad16ba85e817aec4a0f19db49d99b01c';

/// See also [routerObserverStream].
@ProviderFor(routerObserverStream)
final routerObserverStreamProvider =
    AutoDisposeStreamProvider<NavigatorState>.internal(
  routerObserverStream,
  name: r'routerObserverStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$routerObserverStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterObserverStreamRef = AutoDisposeStreamProviderRef<NavigatorState>;
String _$companyLogoAPIHash() => r'9235005749a3d40b7d444c346e5f36f43ce80ee3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [companyLogoAPI].
@ProviderFor(companyLogoAPI)
const companyLogoAPIProvider = CompanyLogoAPIFamily();

/// See also [companyLogoAPI].
class CompanyLogoAPIFamily extends Family<AsyncValue<String>> {
  /// See also [companyLogoAPI].
  const CompanyLogoAPIFamily();

  /// See also [companyLogoAPI].
  CompanyLogoAPIProvider call(
    String domain,
  ) {
    return CompanyLogoAPIProvider(
      domain,
    );
  }

  @override
  CompanyLogoAPIProvider getProviderOverride(
    covariant CompanyLogoAPIProvider provider,
  ) {
    return call(
      provider.domain,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'companyLogoAPIProvider';
}

/// See also [companyLogoAPI].
class CompanyLogoAPIProvider extends AutoDisposeFutureProvider<String> {
  /// See also [companyLogoAPI].
  CompanyLogoAPIProvider(
    String domain,
  ) : this._internal(
          (ref) => companyLogoAPI(
            ref as CompanyLogoAPIRef,
            domain,
          ),
          from: companyLogoAPIProvider,
          name: r'companyLogoAPIProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$companyLogoAPIHash,
          dependencies: CompanyLogoAPIFamily._dependencies,
          allTransitiveDependencies:
              CompanyLogoAPIFamily._allTransitiveDependencies,
          domain: domain,
        );

  CompanyLogoAPIProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.domain,
  }) : super.internal();

  final String domain;

  @override
  Override overrideWith(
    FutureOr<String> Function(CompanyLogoAPIRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CompanyLogoAPIProvider._internal(
        (ref) => create(ref as CompanyLogoAPIRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        domain: domain,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _CompanyLogoAPIProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyLogoAPIProvider && other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CompanyLogoAPIRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `domain` of this provider.
  String get domain;
}

class _CompanyLogoAPIProviderElement
    extends AutoDisposeFutureProviderElement<String> with CompanyLogoAPIRef {
  _CompanyLogoAPIProviderElement(super.provider);

  @override
  String get domain => (origin as CompanyLogoAPIProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
