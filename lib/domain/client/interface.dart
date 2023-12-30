import 'package:practice_v2/domain/client/client.dart';
import 'package:practice_v2/domain/client/create_client.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';
import 'package:sembast/sembast.dart';

abstract class ClientRepository {
  Stream<Client?> getClientStream(String clientId);
  Stream<List<Client>> getClientListStream();
  Future<CreationResult> createClient(CreateClient client);
  Future<UpdateResult> updateClient(Client client);
  Future<DeletionResult> deleteClient(String id);
}

class SembastClientRepository implements ClientRepository {
  SembastClientRepository(this._database);

  final Database _database;

//Creating collection syntax
  final StoreRef<int, Map<String, dynamic>> _store =
      intMapStoreFactory.store('client');

  @override
  Future<CreationResult> createClient(CreateClient createClient) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final Map<String, dynamic> createClientMap = createClient.toJson();

      createClientMap['created_at_timestamp'] =
          DateTime.now().toIso8601String();

      int value = await _store.add(_database, createClientMap);
      return CreationSuccess(value.toString());
    } catch (e) {
      return CreationException(e.toString());
    }
  }

  @override
  Future<DeletionResult> deleteClient(String clientId) async {
    int intClientId = int.parse(clientId);

    int? value = await _store.record(intClientId).delete(_database);

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
  Stream<List<Client>> getClientListStream() {
    var query = _store.query();

    // Return stream of results
    return query.onSnapshots(_database).map((snapshots) {
      if (snapshots.isEmpty) {
        return [];
      } else {
        // Map each snapshot to a Client
        return snapshots.map(
          (clientSnapShot) {
            final clientMap = Map<String, dynamic>.from(clientSnapShot.value);
            clientMap['id'] = clientSnapShot.key.toString();
            return Client.fromJson(clientMap);
          },
        ).toList();
      }
    });
  }

  @override
  Stream<Client?> getClientStream(String clientId) {
    int intClientId = int.parse(clientId);

    return _store
        .record(intClientId)
        .onSnapshot(_database)
        .map((clientSnapshot) {
      if (clientSnapshot == null) {
        return null;
      } else {
        //We are using .from because RecordSnapshot is read only.

        final clientMap = Map<String, dynamic>.from(clientSnapshot.value);

        clientMap['id'] = clientSnapshot.key.toString();

        return Client.fromJson(clientMap);
      }
    });
  }

  @override
  Future<UpdateResult> updateClient(Client client) async {
    int intClientId = int.parse(client.id);

    client = client.copyWith(updatedAtTimestamp: DateTime.now());

    final clientJson = client.toJson();
    clientJson.remove('id');

    Map<String, dynamic>? value =
        await _store.record(intClientId).update(_database, clientJson);

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
}
