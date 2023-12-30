// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sembastDatabaseAsyncHash() =>
    r'04d645fc8f418ea40c098307a55a6428b06c91ac';

/// See also [sembastDatabaseAsync].
@ProviderFor(sembastDatabaseAsync)
final sembastDatabaseAsyncProvider = FutureProvider<Database>.internal(
  sembastDatabaseAsync,
  name: r'sembastDatabaseAsyncProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sembastDatabaseAsyncHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SembastDatabaseAsyncRef = FutureProviderRef<Database>;
String _$sembastDatabaseHash() => r'6918c60835672aaad68e20c8ad804dc63bfcbb22';

/// See also [sembastDatabase].
@ProviderFor(sembastDatabase)
final sembastDatabaseProvider = Provider<Database>.internal(
  sembastDatabase,
  name: r'sembastDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sembastDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SembastDatabaseRef = ProviderRef<Database>;
String _$clientRepositoryHash() => r'34b6f2a194a14c8cdf74c22ce5bf3006bab9e03c';

/// See also [clientRepository].
@ProviderFor(clientRepository)
final clientRepositoryProvider = AutoDisposeProvider<ClientRepository>.internal(
  clientRepository,
  name: r'clientRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clientRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClientRepositoryRef = AutoDisposeProviderRef<ClientRepository>;
String _$clientStreamHash() => r'b919aa204236f0bc76527fb5d181f8001c0cc5e3';

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

/// See also [clientStream].
@ProviderFor(clientStream)
const clientStreamProvider = ClientStreamFamily();

/// See also [clientStream].
class ClientStreamFamily extends Family<AsyncValue<Client?>> {
  /// See also [clientStream].
  const ClientStreamFamily();

  /// See also [clientStream].
  ClientStreamProvider call(
    String clientId,
  ) {
    return ClientStreamProvider(
      clientId,
    );
  }

  @override
  ClientStreamProvider getProviderOverride(
    covariant ClientStreamProvider provider,
  ) {
    return call(
      provider.clientId,
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
  String? get name => r'clientStreamProvider';
}

/// See also [clientStream].
class ClientStreamProvider extends AutoDisposeStreamProvider<Client?> {
  /// See also [clientStream].
  ClientStreamProvider(
    String clientId,
  ) : this._internal(
          (ref) => clientStream(
            ref as ClientStreamRef,
            clientId,
          ),
          from: clientStreamProvider,
          name: r'clientStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clientStreamHash,
          dependencies: ClientStreamFamily._dependencies,
          allTransitiveDependencies:
              ClientStreamFamily._allTransitiveDependencies,
          clientId: clientId,
        );

  ClientStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.clientId,
  }) : super.internal();

  final String clientId;

  @override
  Override overrideWith(
    Stream<Client?> Function(ClientStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ClientStreamProvider._internal(
        (ref) => create(ref as ClientStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        clientId: clientId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Client?> createElement() {
    return _ClientStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClientStreamProvider && other.clientId == clientId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clientId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClientStreamRef on AutoDisposeStreamProviderRef<Client?> {
  /// The parameter `clientId` of this provider.
  String get clientId;
}

class _ClientStreamProviderElement
    extends AutoDisposeStreamProviderElement<Client?> with ClientStreamRef {
  _ClientStreamProviderElement(super.provider);

  @override
  String get clientId => (origin as ClientStreamProvider).clientId;
}

String _$clientListeStreamHash() => r'514bea34e697746b36bf26f0a7ced3be9982907f';

/// See also [clientListeStream].
@ProviderFor(clientListeStream)
final clientListeStreamProvider =
    AutoDisposeStreamProvider<List<Client>>.internal(
  clientListeStream,
  name: r'clientListeStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clientListeStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClientListeStreamRef = AutoDisposeStreamProviderRef<List<Client>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
