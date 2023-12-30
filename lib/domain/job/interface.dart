import 'package:practice_v2/domain/job/create_job.dart';
import 'package:practice_v2/domain/job/job.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';
import 'package:sembast/sembast.dart';

abstract class JobRepository {
  Stream<Job?> getJobStream(String jobId);
  Stream<List<Job>> getJobListStream();
  Future<CreationResult> createJob(CreateJob createJob);
  Future<UpdateResult> updateJob(Job job);
  Future<DeletionResult> deleteJob(String id);
  Stream<List<Job>> getJobListStreamByClientId(String clientId);
}

class SembastJobRepository implements JobRepository {
  SembastJobRepository(this._database);

  final Database _database;

//Creating collection syntax
  final StoreRef<int, Map<String, dynamic>> _jobStore =
      intMapStoreFactory.store('job');

  @override
  Future<DeletionResult> deleteJob(String jobId) async {
    int intjobId = int.parse(jobId);

    int? value = await _jobStore.record(intjobId).delete(_database);

    try {
      if (value != null) {
        return DeletionSuccess();
      } else {
        return DeletionNotFound();
      }
    } catch (e) {
      return DeletionException(e.toString());
    }
  }

  @override
  Stream<List<Job>> getJobListStream() {
    var query = _jobStore.query();

    // Return stream of results
    return query.onSnapshots(_database).map((snapshots) {
      if (snapshots.isEmpty) {
        return [];
      } else {
        // Map each snapshot to a Job
        return snapshots.map(
          (jobSnapShot) {
            final jobMap = Map<String, dynamic>.from(jobSnapShot.value);
            jobMap['id'] = jobSnapShot.key.toString();
            return Job.fromJson(jobMap);
          },
        ).toList();
      }
    });
  }

  @override
  Stream<Job?> getJobStream(String jobId) {
    int intJobId = int.parse(jobId);

    return _jobStore.record(intJobId).onSnapshot(_database).map((jobSnapshot) {
      if (jobSnapshot == null) {
        return null;
      } else {
        //We are using .from because RecordSnapshot is read only.

        final equipmentMap = Map<String, dynamic>.from(jobSnapshot.value);

        equipmentMap['id'] = jobSnapshot.key.toString();

        return Job.fromJson(equipmentMap);
      }
    });
  }

  @override
  Future<UpdateResult> updateJob(Job job) async {
    int intJobId = int.parse(job.id);

    // job = job.copyWith(updatedAtTimestamp: DateTime.now());

    final jobJson = job.toJson();
    jobJson.remove('id');

    Map<String, dynamic>? value =
        await _jobStore.record(intJobId).update(_database, jobJson);

    try {
      if (value != null) {
        return UpdateSuccess();
      } else {
        return UpdateNotFound();
      }
    } catch (e) {
      return UpdateException(e.toString());
    }
  }

  @override
  Future<CreationResult> createJob(CreateJob createJob) async {
    try {
      final Map<String, dynamic> createJobMap = createJob.toJson();

      createJobMap['created_at_timestamp'] = DateTime.now().toIso8601String();

      int value = await _jobStore.add(_database, createJobMap);
      return CreationSuccess(value.toString());
    } catch (e) {
      return CreationException(e.toString());
    }
  }

  @override
  Stream<List<Job>> getJobListStreamByClientId(String clientId) {
    //Querying by client id

    var query = _jobStore.query(
      finder: Finder(
        filter: Filter.equals('client_id', clientId),
      ),
    );

    // Return stream of results
    return query.onSnapshots(_database).map((snapshots) {
      if (snapshots.isEmpty) {
        return [];
      } else {
        // Map each snapshot to a Equipment
        return snapshots.map(
          (jobSnapShot) {
            final jobMap = Map<String, dynamic>.from(jobSnapShot.value);
            jobMap['id'] = jobSnapShot.key.toString();
            return Job.fromJson(jobMap);
          },
        ).toList();
      }
    });
  }
}
