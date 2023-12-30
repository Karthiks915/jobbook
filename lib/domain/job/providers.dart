import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/job/interface.dart';
import 'package:practice_v2/domain/job/job.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';


@riverpod
JobRepository jobRepository(JobRepositoryRef ref) {
  return SembastJobRepository(ref.watch(sembastDatabaseProvider));
}

@riverpod
Stream<Job?> jobStream(JobStreamRef ref, String jobId) {
  return ref.watch(jobRepositoryProvider).getJobStream(jobId);
}

@riverpod
Stream<List<Job>> jobListStream(JobListStreamRef ref) {
  return ref.watch(jobRepositoryProvider).getJobListStream();
}


@riverpod
Stream<List<Job>> jobListStreamByClientId(JobListStreamByClientIdRef ref, String clientId) {
  return ref.watch(jobRepositoryProvider).getJobListStreamByClientId(clientId);
}
