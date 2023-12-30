// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staffRepositoryHash() => r'e7d79862f998413300ac936224dd21f4a6a784fa';

/// See also [staffRepository].
@ProviderFor(staffRepository)
final staffRepositoryProvider = AutoDisposeProvider<StaffRepository>.internal(
  staffRepository,
  name: r'staffRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$staffRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StaffRepositoryRef = AutoDisposeProviderRef<StaffRepository>;
String _$staffStreamHash() => r'479db74866cf902733d6c7a7ae74a1606571ca6a';

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

/// See also [staffStream].
@ProviderFor(staffStream)
const staffStreamProvider = StaffStreamFamily();

/// See also [staffStream].
class StaffStreamFamily extends Family<AsyncValue<Staff?>> {
  /// See also [staffStream].
  const StaffStreamFamily();

  /// See also [staffStream].
  StaffStreamProvider call(
    String staffId,
  ) {
    return StaffStreamProvider(
      staffId,
    );
  }

  @override
  StaffStreamProvider getProviderOverride(
    covariant StaffStreamProvider provider,
  ) {
    return call(
      provider.staffId,
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
  String? get name => r'staffStreamProvider';
}

/// See also [staffStream].
class StaffStreamProvider extends AutoDisposeStreamProvider<Staff?> {
  /// See also [staffStream].
  StaffStreamProvider(
    String staffId,
  ) : this._internal(
          (ref) => staffStream(
            ref as StaffStreamRef,
            staffId,
          ),
          from: staffStreamProvider,
          name: r'staffStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$staffStreamHash,
          dependencies: StaffStreamFamily._dependencies,
          allTransitiveDependencies:
              StaffStreamFamily._allTransitiveDependencies,
          staffId: staffId,
        );

  StaffStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.staffId,
  }) : super.internal();

  final String staffId;

  @override
  Override overrideWith(
    Stream<Staff?> Function(StaffStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StaffStreamProvider._internal(
        (ref) => create(ref as StaffStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        staffId: staffId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Staff?> createElement() {
    return _StaffStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StaffStreamProvider && other.staffId == staffId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, staffId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StaffStreamRef on AutoDisposeStreamProviderRef<Staff?> {
  /// The parameter `staffId` of this provider.
  String get staffId;
}

class _StaffStreamProviderElement
    extends AutoDisposeStreamProviderElement<Staff?> with StaffStreamRef {
  _StaffStreamProviderElement(super.provider);

  @override
  String get staffId => (origin as StaffStreamProvider).staffId;
}

String _$staffListStreamHash() => r'48e6a596c3f303c03195b6532cb8859e69634075';

/// See also [staffListStream].
@ProviderFor(staffListStream)
final staffListStreamProvider = AutoDisposeStreamProvider<List<Staff>>.internal(
  staffListStream,
  name: r'staffListStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$staffListStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StaffListStreamRef = AutoDisposeStreamProviderRef<List<Staff>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
