import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/job/providers.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';


@RoutePage()
class SchedulePage extends ConsumerWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobListStream = ref.watch(jobListStreamProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: jobListStream.when(
                data: (jobs) {
                  return ListView.builder(
                      itemCount: jobs.length,
                      itemBuilder: (context, index) {
                        //Find job index using this code
                        final job = jobs[index];
                        return ListTile(
                            title: Text('Job'
                                ' ${job.id} - ${job.buildingName}'),
                            onTap: () {
                              context.router.push(
                                JobRoute(jobId: job.id),
                              );
                            },
                            trailing: IconButton(
                              onPressed: () async {
                                final deleteResult = await ref
                                    .watch(jobRepositoryProvider)
                                    .deleteJob(jobs[index].id);

                                switch (deleteResult) {
                                  case DeletionSuccess():
                                    print('Deleted');
                                    break;

                                  case DeletionException():
                                    print('Error');
                                    break;
                                  default:
                                    print('Error Default');
                                }
                              },
                              icon: const Icon(Icons.delete),
                            ));
                      });
                },
                loading: () => const CircularProgressIndicator(),
                error: (error, stackTrace) => Text(error.toString()),
              ),
            ),
            const Text('Job List Page'),
            // ElevatedButton(
            //   onPressed: () async {
            //     final createResult = await ref
            //         .watch(jobRepositoryProvider)
            //         .createJob(
            //             CreateJob(clientId: '9', buildingName: 'Nike Store'));

            //     switch (createResult) {
            //       case CreationSuccess():
            //         print('Created');
            //         break;

            //       case CreationException():
            //         print('Error');
            //         break;
            //       default:
            //         print('Error Default');
            //     }

            //     print(ref.watch(sembastDatabaseAsyncProvider));
            //   },
            //   child: const Text('Create Job'),
            // ),
          ],
        ),
      ),
    );
  }
}
