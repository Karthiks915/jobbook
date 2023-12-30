import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/job/create_job.dart';
import 'package:practice_v2/domain/job/providers.dart';

@RoutePage()
class ClientPage extends ConsumerWidget {
  const ClientPage({super.key, @PathParam('clientId') required this.clientId});
  final String clientId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clientStream = ref.watch(clientStreamProvider(clientId));
    final jobRepository = ref.watch(jobRepositoryProvider);
    final jobListStreamByClientId =
        ref.watch(jobListStreamByClientIdProvider(clientId));
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Client Page$clientId'),
        clientStream.when(
          data: (data) => data != null
              ? Expanded(
                  child: Column(
                    children: [
                      Text(data.name),
                      jobListStreamByClientId.when(
                          data: (jobList) {
                            return Expanded(
                              child: ListView.builder(
                                  itemCount: jobList.length,
                                  itemBuilder: (context, index) {
                                    //Find job index using this code
                                    final job = jobList[index];

                                    return ListTile(
                                      title: Text(job.buildingName),
                                    );
                                  }),
                            );
                          },
                          error: (error, stackTrace) => Text(error.toString()),
                          loading: () => const CircularProgressIndicator()),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          jobRepository.createJob(CreateJob(
                              clientId: clientId, buildingName: 'Gym'));
                        },
                        child: const Text('Create Job'),
                      ),
                    ],
                  ),
                )
              : const Text('Record Not Found'),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ],
    ));
  }
}
