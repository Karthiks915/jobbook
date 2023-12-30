// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$jobRepositoryHash() => r'898aad93df57478d8e2b46c6442c034570935124';

/// See also [jobRepository].
@ProviderFor(jobRepository)
final jobRepositoryProvider = AutoDisposeProvider<JobRepository>.internal(
  jobRepository,
  name: r'jobRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$jobRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef JobRepositoryRef = AutoDisposeProviderRef<JobRepository>;
String _$jobStreamHash() => r'efeca34391896ff12521353ba2bcc31c418e7c8d';

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

/// See also [jobStream].
@ProviderFor(jobStream)
const jobStreamProvider = JobStreamFamily();

/// See also [jobStream].
class JobStreamFamily extends Family<AsyncValue<Job?>> {
  /// See also [jobStream].
  const JobStreamFamily();

  /// See also [jobStream].
  JobStreamProvider call(
    String jobId,
  ) {
    return JobStreamProvider(
      jobId,
    );
  }

  @override
  JobStreamProvider getProviderOverride(
    covariant JobStreamProvider provider,
  ) {
    return call(
      provider.jobId,
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
  String? get name => r'jobStreamProvider';
}

/// See also [jobStream].
class JobStreamProvider extends AutoDisposeStreamProvider<Job?> {
  /// See also [jobStream].
  JobStreamProvider(
    String jobId,
  ) : this._internal(
          (ref) => jobStream(
            ref as JobStreamRef,
            jobId,
          ),
          from: jobStreamProvider,
          name: r'jobStreamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$jobStreamHash,
          dependencies: JobStreamFamily._dependencies,
          allTransitiveDependencies: JobStreamFamily._allTransitiveDependencies,
          jobId: jobId,
        );

  JobStreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.jobId,
  }) : super.internal();

  final String jobId;

  @override
  Override overrideWith(
    Stream<Job?> Function(JobStreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: JobStreamProvider._internal(
        (ref) => create(ref as JobStreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        jobId: jobId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Job?> createElement() {
    return _JobStreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JobStreamProvider && other.jobId == jobId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, jobId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JobStreamRef on AutoDisposeStreamProviderRef<Job?> {
  /// The parameter `jobId` of this provider.
  String get jobId;
}

class _JobStreamProviderElement extends AutoDisposeStreamProviderElement<Job?>
    with JobStreamRef {
  _JobStreamProviderElement(super.provider);

  @override
  String get jobId => (origin as JobStreamProvider).jobId;
}

String _$jobListStreamHash() => r'9c453e9e4f730986580165a1c3c640d52c988323';

/// See also [jobListStream].
@ProviderFor(jobListStream)
final jobListStreamProvider = AutoDisposeStreamProvider<List<Job>>.internal(
  jobListStream,
  name: r'jobListStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$jobListStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef JobListStreamRef = AutoDisposeStreamProviderRef<List<Job>>;
String _$jobListStreamByClientIdHash() =>
    r'6db88e9cd5e48e2deeaf1129053047f0be5890ea';

/// See also [jobListStreamByClientId].
@ProviderFor(jobListStreamByClientId)
const jobListStreamByClientIdProvider = JobListStreamByClientIdFamily();

/// See also [jobListStreamByClientId].
class JobListStreamByClientIdFamily extends Family<AsyncValue<List<Job>>> {
  /// See also [jobListStreamByClientId].
  const JobListStreamByClientIdFamily();

  /// See also [jobListStreamByClientId].
  JobListStreamByClientIdProvider call(
    String clientId,
  ) {
    return JobListStreamByClientIdProvider(
      clientId,
    );
  }

  @override
  JobListStreamByClientIdProvider getProviderOverride(
    covariant JobListStreamByClientIdProvider provider,
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
  String? get name => r'jobListStreamByClientIdProvider';
}

/// See also [jobListStreamByClientId].
class JobListStreamByClientIdProvider
    extends AutoDisposeStreamProvider<List<Job>> {
  /// See also [jobListStreamByClientId].
  JobListStreamByClientIdProvider(
    String clientId,
  ) : this._internal(
          (ref) => jobListStreamByClientId(
            ref as JobListStreamByClientIdRef,
            clientId,
          ),
          from: jobListStreamByClientIdProvider,
          name: r'jobListStreamByClientIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$jobListStreamByClientIdHash,
          dependencies: JobListStreamByClientIdFamily._dependencies,
          allTransitiveDependencies:
              JobListStreamByClientIdFamily._allTransitiveDependencies,
          clientId: clientId,
        );

  JobListStreamByClientIdProvider._internal(
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
    Stream<List<Job>> Function(JobListStreamByClientIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: JobListStreamByClientIdProvider._internal(
        (ref) => create(ref as JobListStreamByClientIdRef),
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
  AutoDisposeStreamProviderElement<List<Job>> createElement() {
    return _JobListStreamByClientIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JobListStreamByClientIdProvider &&
        other.clientId == clientId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clientId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin JobListStreamByClientIdRef on AutoDisposeStreamProviderRef<List<Job>> {
  /// The parameter `clientId` of this provider.
  String get clientId;
}

class _JobListStreamByClientIdProviderElement
    extends AutoDisposeStreamProviderElement<List<Job>>
    with JobListStreamByClientIdRef {
  _JobListStreamByClientIdProviderElement(super.provider);

  @override
  String get clientId => (origin as JobListStreamByClientIdProvider).clientId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
