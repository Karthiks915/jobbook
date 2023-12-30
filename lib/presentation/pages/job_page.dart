import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/job/providers.dart';

@RoutePage()
class JobPage extends ConsumerWidget {
  const JobPage({super.key, @PathParam('jobId') this.jobId});
  final String? jobId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobStream = ref.watch(jobStreamProvider(jobId!));
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Job  Page$jobId'),
        jobStream.when(
            data: (job) {
              return Column(
                children: [
                  Text('$jobId ${job!.buildingName}'),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(ClientRoute(clientId: job.clientId));
                    },
                    child: const Text('Client Page'),
                  ),
                ],
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text(error.toString())),
      ],
    ));
  }
}
