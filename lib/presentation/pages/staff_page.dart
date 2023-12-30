import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/domain/staff/providers.dart';

@RoutePage()
class StaffPage extends ConsumerWidget {
  const StaffPage({
    super.key,
    @PathParam('staffId') required this.staffId,
  });
  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffStream = ref.watch(staffStreamProvider(staffId));

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Staff Page'),
            const SizedBox(
              height: 10,
            ),
            staffStream.when(
              data: (staff) {
                return Column(
                  children: [
                    Text(staff!.name),
                  ],
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text(error.toString()),
            ),
          ],
        ),
      ),
    );
  }
}

// final placesProvider = FutureProvider<List<Place>>((ref) async {
//   final Dio dio = Dio();
//   final Response response = await dio.get(
//     'https://maps.googleapis.com/maps/api/place/autocomplete/json',
//     queryParameters: {
//       'input': 'Korea University',
//       'key': 'YOUR_KEY',
//     },
//   );

//   if (response.statusCode == 200) {
//     final data = response.data['predictions'] as List;
//     return data.map((jsonItem) => Place.fromJson(jsonItem)).toList();
//   } else {
//     throw Exception('Failed to load places');
//   }
// });

// class Place {
//   final String name;

//   Place(this.name);

//   factory Place.fromJson(Map<String, dynamic> json) {
//     return Place(json['description']);
//   }
// }

// class LocationTest extends ConsumerWidget {
//   const LocationTest({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final locationAPI = ref.watch(placesProvider);
//     return Column(
//       children: [
//         locationAPI.when(
//             data: (places) {
//               return Column(
//                 children: [
//                   Text(places[0].name),
//                 ],
//               );
//             },
//             error: (error, stackTrace) {
//               return Text(error.toString());
//             },
//             loading: () => const CircularProgressIndicator()),
//       ],
//     );
//   }
// }
