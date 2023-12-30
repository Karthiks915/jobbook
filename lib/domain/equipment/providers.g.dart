// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$equipmentRepositoryHash() =>
    r'fba68c43c4ed368b3a4cb9deb3bae4bb5a81c3c3';

/// See also [equipmentRepository].
@ProviderFor(equipmentRepository)
final equipmentRepositoryProvider =
    AutoDisposeProvider<EquipmentRepository>.internal(
  equipmentRepository,
  name: r'equipmentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$equipmentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EquipmentRepositoryRef = AutoDisposeProviderRef<EquipmentRepository>;
String _$equipmentStreamHash() => r'a7ee7e0b2eb97b980bdb934a7ff7d628d8a17414';

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

/// See also [equipmentStream].
@ProviderFor(equipmentStream)
const equipmentStreamProvider = EquipmentStreamFamily();

/// See also [equipmentStream].
class EquipmentStreamFamily extends Family<AsyncValue<Equipment?>> {
  /// See also [equipmentStream].
  const EquipmentStreamFamily();

  /// See also [equipmentStream].
  EquipmentStreamProvider call(
    String equipmentId,
  ) {
    return EquipmentStreamProvider(
      equipmentId,
    );
  }

  @override
  EquipmentStreamProvider getProviderOverride(
    covariant EquipmentStreamProvider provider,
  ) {
    return call(
      provider.equipmentId,
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
  String? get name => r'equipmentStreamProvider';
}

/// See also [equipmentStream].
class EquipmentStreamProvider extends AutoDisposeStreamProvider<Equipment?> {
  /// See also [equipmentStream].
  EquipmentStreamProvider(
    String equipmentId,
  ) : this._internal(
          (ref) => equipmentStream(
            ref as EquipmentStreamRef,
            equipmentId,
          ),
          from: equipmentStreamProvider,
          name: r'equipmentStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$equipmentStreamHash,
          dependencies: EquipmentStreamFamily._dependencies,
          allTransitiveDependencies:
              EquipmentStreamFamily._allTransitiveDependencies,
          equipmentId: equipmentId,
        );

  EquipmentStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.equipmentId,
  }) : super.internal();

  final String equipmentId;

  @override
  Override overrideWith(
    Stream<Equipment?> Function(EquipmentStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EquipmentStreamProvider._internal(
        (ref) => create(ref as EquipmentStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        equipmentId: equipmentId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Equipment?> createElement() {
    return _EquipmentStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EquipmentStreamProvider && other.equipmentId == equipmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, equipmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EquipmentStreamRef on AutoDisposeStreamProviderRef<Equipment?> {
  /// The parameter `equipmentId` of this provider.
  String get equipmentId;
}

class _EquipmentStreamProviderElement
    extends AutoDisposeStreamProviderElement<Equipment?>
    with EquipmentStreamRef {
  _EquipmentStreamProviderElement(super.provider);

  @override
  String get equipmentId => (origin as EquipmentStreamProvider).equipmentId;
}

String _$equipmentListeStreamHash() =>
    r'ac2b393f125d122d6f3009d4f0a67ef93ea09f29';

/// See also [equipmentListeStream].
@ProviderFor(equipmentListeStream)
final equipmentListeStreamProvider =
    AutoDisposeStreamProvider<List<Equipment>>.internal(
  equipmentListeStream,
  name: r'equipmentListeStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$equipmentListeStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EquipmentListeStreamRef = AutoDisposeStreamProviderRef<List<Equipment>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
