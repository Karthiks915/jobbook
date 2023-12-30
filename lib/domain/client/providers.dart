import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:practice_v2/domain/client/client.dart';
import 'package:practice_v2/domain/client/interface.dart';
import 'package:practice_v2/presentation/components/button_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path_provider/path_provider.dart';

part 'providers.g.dart';

//New one for platforms?

@Riverpod(keepAlive: true)
Future<Database> sembastDatabaseAsync(SembastDatabaseAsyncRef ref) async {
  // Get the path to the documents directory for the platform.
  String dbPath;
  if (Platform.isAndroid || Platform.isIOS) {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    dbPath = join(appDocumentDir.path, 'main.db');
  } else {
    dbPath = join(Directory.current.path, 'main.db');
  }

  // Open the database.
  DatabaseFactory dbFactory = databaseFactoryIo;

  return await dbFactory.openDatabase(dbPath);
}

// @Riverpod(keepAlive: true)
// Future<Database> sembastDatabaseAsync(SembastDatabaseAsyncRef ref) async {
//   // File path to a file in the current directory
//   String dbPath = 'sample.db';
//   DatabaseFactory dbFactory = databaseFactoryIo;

//   return await dbFactory.openDatabase(dbPath);
// }

@Riverpod(keepAlive: true)
Database sembastDatabase(SembastDatabaseRef ref) {
  return ref.watch(sembastDatabaseAsyncProvider).requireValue;
}

@riverpod
ClientRepository clientRepository(ClientRepositoryRef ref) {
  return SembastClientRepository(ref.watch(sembastDatabaseProvider));
}

@riverpod
Stream<Client?> clientStream(ClientStreamRef ref, String clientId) {
  return ref.watch(clientRepositoryProvider).getClientStream(clientId);
}

@riverpod
Stream<List<Client>> clientListeStream(ClientListeStreamRef ref) {
  return ref.watch(clientRepositoryProvider).getClientListStream();
}




